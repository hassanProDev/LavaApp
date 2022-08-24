import 'package:flutter/material.dart';
import 'package:lava_app/view/themes_colors.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
  var _ans;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'What is the user experience?',
            style: TextStyle(fontSize: 20),
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
                Flexible(
                  child: Text(
                    'The user experience is how the developer feels about a user.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Radio(
                  value: 'value',
                  groupValue: _ans,
                  onChanged: (value) {},
                ),
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
                Flexible(
                  child: Text(
                    'The user experience is how the developer feels about a user.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Radio(
                  value: 'value',
                  groupValue: _ans,
                  onChanged: (value) {},
                ),
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
                Flexible(
                  child: Text(
                    'The user experience is how the developer feels about a user.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Radio(
                  value: 'value',
                  groupValue: _ans,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
