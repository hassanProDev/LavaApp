import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text;
  Color? color;
  Color? textColor;
  Function? onTab;

  CustomButton({this.text, this.color, this.textColor,this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTab!();
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: Text(
          text!,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
