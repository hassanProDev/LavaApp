import 'package:flutter/material.dart';

import 'customise/question.dart';

class QuestionScreen extends StatelessWidget {
  static const String routeName='questionScreen';
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Course Exam',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Question(),
            ),
          ),
        ],
      ),
    );
  }
}
