import 'package:flutter/material.dart';

import 'main_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                    ),
                  ),


                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  buttonCreate(context),
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
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()));
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
          "Create Account",
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20.0),
        ),
      ),
    );
  }
}
