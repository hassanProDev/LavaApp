import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  static const String routeName='scanScreen';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('assets/images/scanner/scanner.png',fit: BoxFit.fill,),
        ),Scaffold(
          backgroundColor: Color(0x66000000),
          body: Container(),
        )
      ],
    );
  }
}
