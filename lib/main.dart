import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/home_screen.dart';
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
      initialRoute: HomeScreen.routeName,
      routes: {
        RegisterScreen.routeName: (_) => RegisterScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
    );
  }
}
