import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/barcode_screen/scan_screen.dart';
import 'package:lava_app/view/home_screen/community/community_screen.dart';
import 'package:lava_app/view/home_screen/customise/custom_btn_nav.dart';
import 'package:lava_app/view/home_screen/profile_screen/porfile_screen.dart';
import 'package:lava_app/view/home_screen/tabs/tabs.dart';

import '../themes_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: tabs[pageIndex],

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: MyTheme.primaryColor,
          onPressed: () {
            pageIndex=0;
            setState((){});
          },
          child: Image.asset('assets/images/homeScreen/home.png'),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBtnNav(imgName: 'lava',func: (){
                    Navigator.pushNamed(context, CommunityScreen.routeName);

                  },),
                  CustomBtnNav(imgName: 'barcode',func: (){
                   Navigator.pushNamed(context, ScanScreen.routeName);
                  },),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBtnNav(imgName: 'Bell',ellipse: true,func: (){
                    pageIndex=1;
                    setState((){});
                  },),
                  CustomBtnNav(imgName: 'person',func: (){
                    Navigator.pushNamed(context, ProfileScreen.routeName);
                  },),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
