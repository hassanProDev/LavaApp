import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/community/add_posts.dart';
import 'package:lava_app/view/home_screen/customise/custom_search_field.dart';
import 'package:lava_app/view/themes_colors.dart';

import 'tabs/formusTab.dart';

class CommunityScreen extends StatefulWidget {
  static const String routeName = 'communityScreen';
  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  int formusIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(

                contentPadding: EdgeInsets.symmetric(vertical: 16),
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                title: Text(
                  'Discussion Forums',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
                ),
              ),
              CustomSearchField(),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      formusIndex = 0;
                      setState(() {});
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      margin: EdgeInsets.symmetric(vertical: 16),
                      decoration: formusIndex == 0
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyTheme.primaryColor,
                            )
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                      child: Text(
                        'All Forums',
                        style: TextStyle(
                            color:
                                formusIndex == 0 ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    onTap: () {
                      formusIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      margin: EdgeInsets.symmetric(vertical: 16),
                      decoration: formusIndex == 1
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyTheme.primaryColor,
                            )
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                      child: Text(
                        'My Forums',
                        style: TextStyle(
                            color:
                                formusIndex == 1 ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              formus[formusIndex],
            ],
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.symmetric(vertical: 32),
          child: FloatingActionButton(
            backgroundColor: MyTheme.primaryColor,
            onPressed: () {
              Navigator.pushNamed(context, AddNewPost.routeName);
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
