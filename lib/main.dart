import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/home_screen/get_started_page.dart';
import 'package:laundry_app/screens/home_screen/login_page.dart';
import 'package:laundry_app/screens/home_screen/main_page.dart';
import 'package:laundry_app/screens/home_screen/sign_up_page.dart';
import 'package:laundry_app/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
      ],
      child:const MyApp(),
    ),
  );
}

DatabaseReference userRef = FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  static const String idScreen = "main";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: "Poppins",
      ),
      initialRoute:GetStarted.idScreen,
      routes: {
        SignUpPage.idScreen : (context) => SignUpPage(),
        LoginPage.idScreen : (context) => const LoginPage(),
        GetStarted.idScreen : (context) =>const GetStarted(),
        BottomNavigationBarWidget.idScreen : (context) =>const BottomNavigationBarWidget(),


      },
    );
  }
}

