import 'package:flutter/material.dart';
import 'package:laundry_app/models/recipes/booking_item.dart';
import 'package:provider/provider.dart';
import '../../view_model/main_view_model.dart';

class BucketPage extends StatelessWidget {
  const BucketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   List<BookingItem> list = context.read<MainViewModel>().getBucket();
   var finalList = [];
   list.forEach((element) {
     if( element.count != 0 ){
       finalList.add(element);
     }
   });
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,
       leading: Padding(
         padding: const EdgeInsets.only(left: 20.0),
         child: IconButton( onPressed: (){
           Navigator.pop(context);
         } ,icon:const Icon(Icons.arrow_back, size: 23.0,color: Colors.black87,)),
       ),
       title:const Text("Complated order", style: TextStyle(fontSize: 19,color: Colors.black87, fontWeight: FontWeight.w600),),
     ),
      body: ListView.builder(
          itemCount: finalList.length,
          itemBuilder: (BuildContext context, int index){
            var item = finalList.elementAt(index);
        return Column(
          children: [
            Column(
              children: [
                const  SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 10.0,
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: ListTile(
                        leading: Image.asset("${item.recipe.imgURL}"),
                        title:    Row(
                          children: [
                             Text("${item.recipe.cost} " ),
                            const  Icon(Icons.attach_money, size: 19,color: Colors.black, ),
                          ],
                        ),
                        subtitle: Text("${item.recipe.gender}"),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 10),
                          child: Column(
                            children: [
                              Text( "Total selected :" + "  ${item.count}"),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        );
      }),
    );
  }



}
