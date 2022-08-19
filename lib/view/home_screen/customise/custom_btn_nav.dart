import 'package:flutter/material.dart';

class CustomBtnNav extends StatelessWidget {
  String? imgName;
  CustomBtnNav({this.imgName});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(8),
      child: IconButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(horizontal: 8),
        icon: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Visibility(child: Image.asset('assets/images/homeScreen/Ellipse.png'),visible: true,),
            Image.asset('assets/images/homeScreen/$imgName.png'),
          ],
        ),
      ),
    );
  }
}
