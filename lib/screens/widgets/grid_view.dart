import 'package:flutter/material.dart';
import '../../models/recipes/recipe.dart';
import 'laundary_plus_page.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 30,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        itemGrid(Recipe.recipeList[0], context),
        itemGrid(Recipe.recipeList[1], context),
        itemGrid(Recipe.recipeList[2], context),
        InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LaundaryPlusPage()));
            },
            child: itemGrid(Recipe.recipeList[3], context)),

      ],
    );
  }
  Widget itemGrid(Recipe recipeList, context){
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
          color: Colors.blue[100],
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top:41.0),
            child: Image.asset(recipeList.imgURL),
          ),
         const SizedBox(height: 10.0,),
          Text(recipeList.name, style:const TextStyle(fontSize: 18.0,
              fontWeight: FontWeight.w700, color: Colors.white),),
        ],
      ),

    );
  }
}
