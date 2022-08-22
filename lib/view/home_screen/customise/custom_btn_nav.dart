import 'package:flutter/material.dart';

class CustomBtnNav extends StatelessWidget {
  String? imgName;
  bool? ellipse;
  Function? func;
  CustomBtnNav({this.imgName,this.ellipse=false,this.func});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(8),
      child: IconButton(
        onPressed: () {
          func!();
        },
        padding: EdgeInsets.symmetric(horizontal: 8),
        icon: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Visibility(child: Image.asset('assets/images/homeScreen/Ellipse.png'),visible: ellipse!,),
            Image.asset('assets/images/homeScreen/$imgName.png'),
          ],
        ),
      ),
    );
  }
}
