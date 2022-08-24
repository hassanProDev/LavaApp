import 'package:flutter/material.dart';

class CustomBtnCert extends StatelessWidget {
  String? text;
  Function? func;
CustomBtnCert({this.text,this.func});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        func!();
      },
      child: Container(
        child: Text('$text'),
      ),
    );
  }
}
