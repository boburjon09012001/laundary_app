import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/home_screen/sign_up_page.dart';
import 'package:laundry_app/screens/widgets/progress_dialog.dart';

import '../../main.dart';
import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String idScreen = "login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
       children: [
         Center(
           child: SafeArea(
             child: Column(
               children: [
                 Container(
                   margin: EdgeInsets.only(
                       top: MediaQuery.of(context).size.height * 0.1),
                   height: 80.0,
                   width: 120.0,
                   child: Image.asset("assets/images/logo.png"),
                 ),
                 Container(
                   child:const Text(
                     "Goldville Laundry",
                     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0),
                   ),
                 ),
                 Padding(
                   padding:
                   const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                   child: TextFormField(
                     controller: emailTextEditingController,
                     decoration: const InputDecoration(
                       border: UnderlineInputBorder(),
                       labelText: 'Username or Email',
                     ),
                   ),
                 ),
                 Padding(
                   padding:
                   const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                   child: TextFormField(
                     controller: passwordTextEditingController,
                     decoration: const InputDecoration(
                       border: UnderlineInputBorder(),
                       labelText: 'Password',
                     ),
                   ),
                 ),
                 Padding(
                   padding:
                   const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Container(
                         child:const Text(
                           "Forgot passcode?",
                           style: TextStyle(
                             color: Color(0xFF0083FF),
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(
                   height: MediaQuery.of(context).size.height * 0.09,
                 ),
                 buttonLogin(context),
                 SizedBox(
                   height: MediaQuery.of(context).size.height * 0.02,
                 ),
                 TextButton(onPressed: (){
                   Navigator.pushNamedAndRemoveUntil(context, SignUpPage.idScreen, (route) => false);
                   }, child:const Text("Do you have an account? Sign Up here",))

               ],
             ),
           ),
         ),
       ],
      ),
    );
  }

  Widget buttonLogin(context){
    return  SizedBox(
      width: 314.0,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {
          if(!emailTextEditingController.text.contains("@")){
            displayToastMessage(context, "Email address is not Valid.");
          }
          else  if(passwordTextEditingController.text.isEmpty){
            displayToastMessage(context, "Password is necessary");
          }
          else{
            loginAndAuthenticationUser(context);
          }
        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const  EdgeInsets.all(12)),
            foregroundColor:
            MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF0083FF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(
                    color: Color(0xFF0083FF),
                  ),
                ))),
        child: const Text(
          "Login",
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20.0),
        ),
      ),
    );
  }
  final  FirebaseAuth _firebaseAuth =  FirebaseAuth.instance;
  void loginAndAuthenticationUser(BuildContext context) async {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return ProgressDialog(message: "Authentication, Please wait...");
      }
    );



    final User? firebaseUser = (await _firebaseAuth
        .signInWithEmailAndPassword(email: emailTextEditingController.text,
        password: passwordTextEditingController.text).catchError((errMsg) {
          Navigator.of(context);
      displayToastMessage(context, "Error : " + errMsg.toString());
    })).user;

    if (firebaseUser != null) {
      userRef.child(firebaseUser.uid).once().then((value) =>
          (DataSnapshot snap) {
        if (snap.value != null) {
          Navigator.pushNamedAndRemoveUntil(
              context, BottomNavigationBarWidget.idScreen, (route) => false);
          displayToastMessage(context, "You are logged in");
        }
        else {
          Navigator.of(context);
          _firebaseAuth.signOut();
          displayToastMessage(context,
              "No record exist for this user. Please create new account!");
        }
      });
    }
    else {

      displayToastMessage(context, "Error occured your account can not be connect");
    }
  }
}
