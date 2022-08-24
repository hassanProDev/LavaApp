import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String text;
  TextInputType? inputType;
  int? lines;
  Function? func;

  CustomTextField(this.text,{this.inputType,this.lines=1,this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Text('$text'),
          padding: EdgeInsets.symmetric(vertical: 8),
        ),
        TextField(
          onChanged: (value){
            func!(value);
          },
          keyboardType: inputType,
          minLines: 1,
          maxLines: lines,
          decoration: InputDecoration(
            isDense: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
