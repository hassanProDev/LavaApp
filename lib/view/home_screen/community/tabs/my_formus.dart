import 'package:flutter/material.dart';

class MyFormus extends StatelessWidget {
  const MyFormus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => Container(),
      ),
    );
  }
}
