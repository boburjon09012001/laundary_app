import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children:  [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child:const Icon(Icons.arrow_back, color: Colors.black,)),
                    title:const Text("About", style: TextStyle(fontSize: 19.0,
                        color: Colors.black, fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                basketImageWidget(context),
                const  Text("About us",
                  style:TextStyle(fontSize: 26.0 ,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF000000),

                  ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  Text("This application is useful for" "\nwashing and drying clothes. "
                  "\nOur programmer is Bobur." "\nThis application was created" "\nvery useful.",

                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                ),



              ],
            ),
          ),
        ],
      ),

    );
  }
  Widget basketImageWidget(context){
    return  Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Image.asset("assets/images/about-image.png"),
    );

  }
}
