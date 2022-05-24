import 'dart:io';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/home_screen/bucket_page.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidgetPage(),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 4.0),
              child: SizedBox(
                  child: ListTile(
                leading: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>const DrawerWidgetPage()));
                    },
                    child: Image.asset("assets/images/burgerbar.png")),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>const BucketPage()));
                  },
                  icon:const  Icon(Icons.local_grocery_store_outlined),
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 10.0),
            child: Row(
              children: const [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Row(
              children: const [
                Text("Back",
                    style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF007EF5))),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 10.0,
            child: Container(
              height: 103.0,
              width: 353.0,
              child: const Padding(
                padding: EdgeInsets.only(top: 23.0, left: 18.0),
                child: Text(
                  "Subscribe to  Laundry+ "
                  "to get monthly worth of laundry",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.48,
              child: const GridViewWidget()),
        ],
      ),
    );
  }


  }
  Future showMyDialog( BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title:const Text("Do you want to exit?"),
      actions: [

        TextButton(onPressed: (){
        }, child: InkWell(
          onTap: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => exit(0)));
          },
          child: const Text("Yes",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        )),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("No",
          style: TextStyle(
            color: Colors.red,
          ),
        )),
      ],
    ));
  }

