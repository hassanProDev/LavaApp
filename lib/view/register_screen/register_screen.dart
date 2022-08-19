import 'package:flutter/material.dart';
import 'package:lava_app/view/register_screen/login_screen.dart';
import 'package:lava_app/view/register_screen/signup_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'registerScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/register/topBranch.png',
                  width: MediaQuery.of(context).size.width * 0.18,
                ),
              ),
              Image.asset(
                'assets/images/register/lavaLogo.png',
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.green,
                labelColor: Colors.green,
                labelStyle: TextStyle(height: 3, fontSize: 18),
                tabs: [
                  Text('Login'),
                  Text('Sign Up'),
                ],
              ),
              Expanded(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TabBarView(
                  children: [
                    LoginScreen(),
                    SignUpScreen(),
                  ],
                ),
              )),
              Container(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  'assets/images/register/bottomBranch.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
