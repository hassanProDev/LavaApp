import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/home_screen.dart';
import 'package:lava_app/view/home_screen/tabs/barcode_screen/scan_screen.dart';
import 'package:lava_app/view/home_screen/tabs/profile_screen/porfile_screen.dart';
import 'package:lava_app/view/register_screen/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: RegisterScreen(),
      initialRoute: RegisterScreen.routeName,
      routes: {
        RegisterScreen.routeName: (_) => RegisterScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ScanScreen.routeName:(_)=>ScanScreen(),
        ProfileScreen.routeName:(_)=>ProfileScreen(),
      },
    );
  }
}
