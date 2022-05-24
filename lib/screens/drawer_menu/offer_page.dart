import 'package:flutter/material.dart';
import '../widgets/start_laundrary_button.dart';

class OfferPage extends StatelessWidget {
  OfferPage({Key? key}) : super(key: key);

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
                    title:const Text("My offers", style: TextStyle(fontSize: 19.0,
                        color: Colors.black, fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                basketImageWidget(context),
                const  Text("ohh snap! No offers yet",
                  style:TextStyle(fontSize: 26.0 ,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF000000),

                  ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                const  Text("Areous dose’t have any offers"
               " \nat this timeplease check again",
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
      height: MediaQuery.of(context).size.height * 0.3,
      child: Image.asset("assets/images/offer.png"),
    );

  }
}
