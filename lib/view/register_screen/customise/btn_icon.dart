import 'package:flutter/material.dart';

class CustomBtnIcon extends StatelessWidget {
  String? imgName;

  CustomBtnIcon({@required this.imgName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Image.asset('assets/images/register/$imgName.png'),
      ),
    );
  }
}
