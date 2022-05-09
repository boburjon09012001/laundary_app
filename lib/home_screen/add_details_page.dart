import 'package:flutter/material.dart';
import 'package:laundry_app/recipes/recipe_list.dart';
import 'package:laundry_app/widgets/search.dart';
import '../widgets/add_remove.dart';
import '../widgets/button_sign.dart';

class AddDetails extends StatelessWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFEEEEE),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children:  [
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    title:const Text(
                      "Add Details",
                      style: TextStyle(fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing:IconButton( onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MySearchPage()));

                    },
                        icon : const Icon(Icons.search)),
                  ),
                ),

                Column(
                  children: [
                    Container(
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                      ),
                      margin:const EdgeInsets.only(top: 20.0),
                      height: MediaQuery.of(context).size.height * 0.78,
                      child:     ListView.builder(
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index){
                          return  getColumnTile(RecipeList.recipeGetList.elementAt(index), context , index);

                        },
                      ),
                    ),

                  ],
                ),


              ],
            ),
          ),
        const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: ButtonSign(),
          ),
        ],
      ),
    );
  }
  Widget getColumnTile( RecipeList recipeGetList, context, int index){
    return Container(
      color:const Color(0xFFEEEEE),
      child: Column(
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
                  leading: Image.asset(recipeGetList.imgURL, ),
                  title:    Row(
                    children: [
                      Text(recipeGetList.cost ),
                    const  Icon(Icons.attach_money, size: 19,color: Colors.black, ),
                    ],
                  ),
                  subtitle: Text(recipeGetList.gender),
                  trailing:  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child:const AddRemove(),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
