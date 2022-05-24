import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:laundry_app/screens/home_screen/main_page.dart';
import 'package:laundry_app/screens/widgets/progress_dialog.dart';
import '../../main.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);
  static const String idScreen = "signUp";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController = TextEditingController();
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
                        top: MediaQuery.of(context).size.height * 0.04),
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
                     controller: nameTextEditingController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: TextFormField(
                      controller: emailTextEditingController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email address',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: TextFormField(
                      controller: phoneNumberTextEditingController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Phone number',
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
                    child: TextFormField(
                      controller: confirmPasswordTextEditingController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  buttonCreate(context),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextButton(onPressed: (){
                    setState((){
                      Navigator.pushNamedAndRemoveUntil(context, LoginPage.idScreen, (route) => false);
                    });
                  }, child:const Text("Already have an account? Login here",))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }




  Widget buttonCreate(context){
    return SizedBox(
      width: 314.0,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {
          if(nameTextEditingController.text.length < 4){
            displayToastMessage(context, "Name must be atleast 4 characters.");
          }
          else  if(!emailTextEditingController.text.contains("@")){
            displayToastMessage(context, "Email address is not Valid.");
          }
          else  if(phoneNumberTextEditingController.text.isEmpty){
            displayToastMessage(context, "Phone number is necessary.");
          }
          else  if(passwordTextEditingController.text.length < 6){
            displayToastMessage(context, "Password must be atleast 6 characters.");
          }
          else  if(confirmPasswordTextEditingController.text.isEmpty){
            displayToastMessage(context, " Confirm password is necessary");
          }

          else {
            signUpNewUser(context);

          }
        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
               const EdgeInsets.all(12)),
            foregroundColor:
            MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor:
            MaterialStateProperty.all<Color>( const Color(0xFF0083FF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(
                    color: Color(0xFF0083FF),
                  ),
                ))),
        child: const Text(
          "Create Account",
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20.0),
        ),
      ),
    );
  }
  final  FirebaseAuth _firebaseAuth =  FirebaseAuth.instance;

  void signUpNewUser (BuildContext   context) async {

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return ProgressDialog(message: "Sign up, Please wait...");
        }
    );

    final User? firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(email: emailTextEditingController.text,
        password: passwordTextEditingController.text).catchError((errMsg){
          Navigator.pop(context);
      displayToastMessage(context, "Error : " + errMsg.toString(), );
    })).user;
    if(firebaseUser !=  null){
      Map  userDataMap = {
        "name" : nameTextEditingController.text.trim(),
        "email" : emailTextEditingController.text.trim(),
        "phone" : phoneNumberTextEditingController.text.trim(),
        "password" : passwordTextEditingController.text.trim(),
        "confirmPassword" : confirmPasswordTextEditingController.text.trim(),
      };
      userRef.child(firebaseUser.uid).set(userDataMap);
      displayToastMessage(context, "Your account has been Created");
      Navigator.pushNamedAndRemoveUntil(context, BottomNavigationBarWidget.idScreen, (route) => false);

    }
    else{
      Navigator.pop(context);
      displayToastMessage(context, " New User account has not been Created!");
    }

  }
}

displayToastMessage(BuildContext context , String message){
  Fluttertoast.showToast(msg: message);
}
