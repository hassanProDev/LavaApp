import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  List<Widget> buttons = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/register/topBranch.png'),
          ),
          Image.asset(
            'assets/images/register/lavaLogo.png',
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          TabBar(
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            labelStyle: TextStyle(height: 4, fontSize: 18),
            tabs: [
              Text('Login'),
              Text('Sign Up'),
            ],
          ),
          Expanded(
              child: TabBarView(
            children: [
              Container(
                color: Colors.blue,
              ),
              Container()
            ],
          )),
          Container(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/register/bottomBranch.png'),
          ),
        ],
      )),
    );
  }
}
