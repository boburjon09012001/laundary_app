import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/main_view_model.dart';


class AddRemove extends StatelessWidget {
  const AddRemove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(onPressed: (){
              context.read<MainViewModel>().decrease();
            }, icon:const Icon(Icons.remove),),
            Text("${context.watch<MainViewModel>().count}",
              style:const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),),
            IconButton(onPressed: (){
              context.read<MainViewModel>().increase();
            }, icon:const Icon(Icons.add),),

          ]),
    );
  }
}
