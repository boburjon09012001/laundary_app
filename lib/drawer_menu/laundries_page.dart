import 'package:flutter/material.dart';
import '../widgets/start_laundrary_button.dart';

class LaundriesPage extends StatelessWidget {
  const LaundriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                    title:const Text("Laundries", style: TextStyle(fontSize: 19.0,
                        color: Colors.black, fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                basketImageWidget(context),
                const  Text("No Laundries yet",
                  style:TextStyle(fontSize: 28.0 ,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF000000),

                  ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                const  Text("Hit the button down below \nto start your laundry order",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
                const StartLaundryButton(),



              ],
            ),
          ),
        ],
      ),

    );
  }
  Widget basketImageWidget(context){
    return  Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Image.asset("assets/images/basket.png"),
    );

  }
}
