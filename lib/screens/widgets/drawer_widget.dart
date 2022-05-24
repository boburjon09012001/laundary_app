import 'package:flutter/material.dart';
import '../drawer_menu/about_page.dart';
import '../drawer_menu/laundries_page.dart';
import '../drawer_menu/offer_page.dart';
import '../drawer_menu/privacy_page.dart';
import '../home_screen/main_page.dart';
import '../home_screen/menu_page.dart';


class DrawerWidgetPage extends StatelessWidget {
  const DrawerWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                const   Padding(
                  padding:  EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
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
                const   Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
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
                const   Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
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
                const   Padding(
                  padding:  EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
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
                const  Padding(
                  padding:  EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
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
                const Padding(
                  padding:  EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 30.0),
            child: ListTile(
              title: InkWell(
                onTap: () {
                  showMyDialog(context);
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
              leading: InkWell(
                  onTap: () {
                    showMyDialog(context);
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
