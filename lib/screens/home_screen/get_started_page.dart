import 'package:flutter/material.dart';

import 'login_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);
  static const String idScreen = "getStarted";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF0083FF),
      body: ListView(
       children: [
         Column(
           children: [
             Row(
               children: [
                 Container(
                   margin:const EdgeInsets.only(top: 59.0, left: 53.0),
                   height: 100.0,
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                     radius: 35.0,
                     child: Image.asset("assets/images/logo.png"),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 59.0, left: 12.0),
                   child: Column(
                     children:const [
                       Text(
                         "Goldville",
                         style: TextStyle(
                             fontSize: 21.0,
                             letterSpacing: 0.5,
                             color: Color(0xFFFFFFFF),
                             fontWeight: FontWeight.w400),
                       ),
                       Text("Laundry",
                           style: TextStyle(
                               fontSize: 21.0,
                               letterSpacing: 0.5,
                               color: Color(0xFFFFFFFF),
                               fontWeight: FontWeight.w400)),
                     ],
                   ),
                 ),
               ],
             ),
             Padding(
               padding: const EdgeInsets.only(left:53.0, top: 36.0),
               child: Row(
                 children:const [
                   Text("Laundry for ",
                     style: TextStyle(fontSize: 29.0,
                       fontWeight: FontWeight.bold,
                       color: Color(0xFFFFFFFF),
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:53.0),
               child: Row(
                 children:const [
                   Text("Everyone",style: TextStyle(fontSize: 29.0,
                     fontWeight: FontWeight.bold,
                     color: Color(0xFFFFFFFF),
                   ),),
                 ],
               ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child:   Column(
                 children: [
                   Container(
                     alignment: Alignment.topLeft,
                     width: MediaQuery.of(context).size.width * 1,
                     height: MediaQuery.of(context).size.height * 0.45,
                     child: Image.asset("assets/images/background.png"),
                   ),
                   SizedBox(
                     width: 314.0,
                     height: 55.0,
                     child: ElevatedButton(
                       onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder:
                             (context) => const LoginPage()));
                       },
                       style: ButtonStyle(
                           padding: MaterialStateProperty.all<EdgeInsets>( const EdgeInsets.all(12)),
                           foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                           backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30.0),
                                 side:const BorderSide(color: Colors.white,),
                               )
                           )
                       ),
                       child:const Text("Get started", style: TextStyle(color: Color(0xFF0076FF),
                           fontSize: 20.0 ),),
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ],
      ),
    );
  }
}
