import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text;
  Color? color;
  Color? textColor;

  CustomButton({this.text, this.color, this.textColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        child: Text(text!, style: TextStyle(color: textColor, fontSize: 18,),textAlign: TextAlign.center,),
      ),
    );
  }
}
