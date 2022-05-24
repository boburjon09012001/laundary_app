import 'package:flutter/material.dart';
import 'add_details_page.dart';
import 'history_page.dart';
import 'menu_page.dart';
class BottomNavigationBarWidget extends StatefulWidget {
 const BottomNavigationBarWidget({Key? key}) : super(key: key);
 static const String idScreen = "bottom";

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

int selectedIndex = 0;
List<Widget> screen = [
 const MyHomePage(),
  const AddDetails(),
  Container(),
  const HistoryPage(),
];


class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: <BottomNavigationBarItem>[
       const   BottomNavigationBarItem(
            activeIcon:  Icon(Icons.home_rounded, size: 29.0,),
            icon: Icon(Icons.home_outlined, size: 30.0, color: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon:  Image.asset('assets/images/plusicon.png', color: Colors.blue,),
            icon: Image.asset('assets/images/plusicon.png', color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/images/user.png',color: Colors.blue, ),
            icon:  Image.asset('assets/images/user.png',color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon:  Image.asset('assets/images/soat.png',color: Colors.blue, ),
            icon: Image.asset('assets/images/soat.png',color: Colors.grey),
            label: "",
          ),

        ],
        currentIndex: selectedIndex,
        onTap: (int i) {
          setState(() {
            selectedIndex = i;
          });
        },
      ),
    );
  }
}
