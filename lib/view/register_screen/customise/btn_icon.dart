import 'package:flutter/material.dart';

class CustomBtnIcon extends StatelessWidget {
  String? imgName;
  Function? onTab;

  CustomBtnIcon({@required this.imgName,this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTab!();
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Image.asset('assets/images/register/$imgName.png'),
      ),
    );
  }
}
