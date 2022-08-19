import 'package:flutter/material.dart';

import '../component/custom_button.dart';
import '../component/custom_textfield.dart';
import 'customise/btn_icon.dart';
import 'customise/custom_hypertext.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.38,
              child: CustomTextField('First Name'),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.38,
              child: CustomTextField('Last Name'),
            ),
          ],
        ),
        CustomTextField('Email'),
        CustomTextField('Password'),
        CustomTextField('Confirm Password'),
        CustomButton(
          text: 'Sign Up',
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
