import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/barcode_screen/scan_screen.dart';
import 'package:lava_app/view/home_screen/cert_screen/cert_screen.dart';
import 'package:lava_app/view/home_screen/community/add_posts.dart';
import 'package:lava_app/view/home_screen/community/community_screen.dart';
import 'package:lava_app/view/home_screen/home_screen.dart';
import 'package:lava_app/view/home_screen/profile_screen/porfile_screen.dart';
import 'package:lava_app/view/home_screen/questions_screen/questions_screen.dart';
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
        ScanScreen.routeName: (_) => ScanScreen(),
        ProfileScreen.routeName: (_) => ProfileScreen(),
        QuestionScreen.routeName: (_) => QuestionScreen(),
        CommunityScreen.routeName: (_) => CommunityScreen(),
        AddNewPost.routeName:(_)=>AddNewPost(),
        CertSCreen.routeName:(_)=>CertSCreen(),
      },
    );
  }
}
