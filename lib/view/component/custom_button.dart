import 'package:flutter/material.dart';
import 'package:lava_app/model/custom_btn_model.dart';

class CustomButton extends StatelessWidget {
  CustomBtnModel? cbm=CustomBtnModel(16, 'Login', Colors.blue,double.infinity);

  @override
  Widget build(BuildContext context) {
cbm!.width=600;
    return InkWell(
      splashColor: Colors.white,
      child:Container(
        width: cbm!.width,
        padding: EdgeInsets.symmetric(vertical: cbm!.verticalPadding!),
        decoration: BoxDecoration(
          color: cbm!.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text('${cbm!.text}',textAlign: TextAlign.center,),
      ),
      onTap: () {

      },

    );
  }
}
