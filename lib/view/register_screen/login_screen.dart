import 'package:flutter/material.dart';
import 'package:lava_app/view/component/custom_button.dart';
import 'package:lava_app/view/register_screen/customise/btn_icon.dart';
import 'package:lava_app/view/register_screen/customise/custom_hypertext.dart';

import '../component/custom_textfield.dart';

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
          color: Colors.green,
          textColor: Colors.white,
          onTab: () {},
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
