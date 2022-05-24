import 'package:flutter/material.dart';

import '../../models/recipes/laundary_recipe.dart';

class LaundaryPlusPage extends StatelessWidget {
  const LaundaryPlusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    title: const Text(
                      "Laundry +",
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                mothlyLaundryPlanWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    decoration:const BoxDecoration(
                        color: Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        )),
                    child: Column(
                      children: [
                        listPlanLaundary(LaundaryRecipe.laundaryRecipeList[0], context),
                        listPlanLaundary(LaundaryRecipe.laundaryRecipeList[1], context),
                        listPlanLaundary(LaundaryRecipe.laundaryRecipeList[2], context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mothlyLaundryPlanWidget() {
    return const  Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
        "Monthly Laundary Plan",
        style: TextStyle(
          fontSize: 19.0,
          fontWeight: FontWeight.w900,
          color: Color(0xFF000000),
        ),
      ),
    );
  }

  Widget listPlanLaundary(LaundaryRecipe recipes, context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 46.0, left: 18.0, right: 18.0),
          child: Container(
            decoration:const BoxDecoration(
               color: Color(0xFFBBDEFB),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                )),
            height: MediaQuery.of(context).size.height * 0.15,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(recipes.imgURL),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 30.0),
                  child: Column(
                    children: [
                      Text(recipes.name, style:const TextStyle(fontSize: 18.0),),
                      Row(
                        children: [
                          Text(recipes.cost , style:const TextStyle(fontSize: 19,color: Colors.black87,),),
                        const  Icon(Icons.attach_money, size: 19,color: Colors.black87, ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 68.0, left: 30.0),
                  child: Column(
                    children: [
                      Text(recipes.getInfo, style:const TextStyle(fontSize: 19,color: Colors.black87,), ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
