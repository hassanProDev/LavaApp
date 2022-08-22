import 'package:flutter/material.dart';
import 'package:lava_app/view/themes_colors.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
var _ans;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('What is the user experience?',textAlign: TextAlign.center,),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: MyTheme.primaryColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                Radio(value: 'value', groupValue: _ans, onChanged: (value){
                },),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: MyTheme.primaryColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                Radio(value: 'value', groupValue: _ans, onChanged: (value){
                },),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: MyTheme.primaryColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                Radio(value: 'value', groupValue: _ans, onChanged: (value){
                },),
              ],
            ),
          ),
        ],
      ),
    );
  }
}