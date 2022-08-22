import 'package:flutter/material.dart';
import 'package:lava_app/view/component/custom_button.dart';
import 'package:lava_app/view/register_screen/customise/btn_icon.dart';
import 'package:lava_app/view/register_screen/customise/custom_hypertext.dart';
import 'package:lava_app/view/themes_colors.dart';

import '../component/custom_textfield.dart';
import '../home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextField('Email'),
        CustomTextField('Password'),
        CustomButton(
          text: 'Login',
          color: MyTheme.primaryColor,
          textColor: Colors.white,
          onTab: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
        CustomHyperText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBtnIcon(
              imgName: 'Google',
              onTab: () {},
            ),
            CustomBtnIcon(
              imgName: 'Facebook',
              onTab: () {},
            ),
          ],
        )
      ],
    );
  }
}
