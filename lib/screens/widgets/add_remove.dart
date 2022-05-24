import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/main_view_model.dart';


class CounterPage extends StatefulWidget {
   int index;
   CounterPage(this.index, {Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
 int count = 0;
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(onPressed: (){
              setState((){
               if(count != 0) count--;
               context.read<MainViewModel>().updateBucket(widget.index, count);
              });
            }, icon:const Icon(Icons.remove),),
            Text(

              "$count",
              style:const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),),
            IconButton(onPressed: (){
              setState((){
                count++;
                context.read<MainViewModel>().updateBucket(widget.index, count);
              });
            }, icon:const Icon(Icons.add),),

          ]),
    );
  }
}
