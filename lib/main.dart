import 'package:account_screen1/screens/account_screen.dart';
import 'package:account_screen1/screens/login_screen.dart';
import 'package:account_screen1/screens/market_Screen.dart';
import 'package:account_screen1/screens/newspaper_screen.dart';
import 'package:account_screen1/screens/profile_Screen.dart';
import 'package:account_screen1/screens/trade_screen.dart';


import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}

class Firebase {
  static initializeApp() {}
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LogInScreen(),
    );
  }
}





