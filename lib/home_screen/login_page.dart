import 'package:flutter/material.dart';
import 'package:laundry_app/home_screen/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                   height: MediaQuery.of(context).size.height * 0.23,
                 ),
                 buttonLogin(context),
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
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SignUpPage()));
        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.all(12)),
            foregroundColor:
            MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor:
            MaterialStateProperty.all<Color>(Color(0xFF0083FF)),
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
}
