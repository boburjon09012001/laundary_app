import 'dart:io';
import 'package:flutter/material.dart';
import 'package:laundry_app/drawer_menu/offer_page.dart';
import 'package:laundry_app/drawer_menu/privacy_page.dart';
import '../drawer_menu/about_page.dart';
import '../drawer_menu/laundries_page.dart';
import '../widgets/grid_view.dart';
import 'main_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
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
                          builder: (context) => DrawerWidget()));
                    },
                    child: Image.asset("assets/images/burgerbar.png")),
                trailing: InkWell(
                    onTap: () {},
                    child: const Icon(Icons.local_grocery_store_outlined)),
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

  Widget  DrawerWidget() {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: ListTile(
              leading: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const BottomNavigationBarWidget()));
                  },
                  child: Image.asset(
                    'assets/listImage/x.png',
                    width: 24.0,
                  )),
              title: const Text(
                "Goldville Laundry",
                style: TextStyle(color: Colors.white, fontSize: 19.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Column(
              children: [
             const   ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>  LaundriesPage()));
                      },
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LaundriesPage()));
                    },
                    child:const Text(
                      'Laundries',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OfferPage()));
                    },
                    child:const Icon(
                      Icons.local_offer,
                      color: Colors.white,
                    ),
                  ),
                  title: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OfferPage()));
                    },
                    child: const Text(
                      'Offer and Promo',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  PrivacyPage()));
                    },
                    child: const Icon(
                      Icons.privacy_tip,
                      color: Colors.white,
                    ),
                  ),
                  title: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  PrivacyPage()));
                    },
                    child:const Text(
                      'Privacy policy',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              const  ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ),
               ListTile(
                  leading: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                      (context)=> AboutPage()));
                    },
                    child:const Icon(
                      Icons.sticky_note_2,
                      color: Colors.white,
                    ),
                  ),
                  title: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                          (context)=> AboutPage()));
                    },
                    child: const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 30.0),
            child: ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
              leading: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => exit(0)));
                  },
                  child: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
