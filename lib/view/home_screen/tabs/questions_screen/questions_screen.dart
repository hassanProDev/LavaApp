import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/tabs/questions_screen/data/question_data.dart';
import 'package:lava_app/view/themes_colors.dart';

class QuestionScreen extends StatefulWidget {
  static const String routeName = 'questionScreen';

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Course Exam',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text('Question ',style: TextStyle(fontSize: 36),),
                Text(
                  '${questionNumber + 1}',
                  style: TextStyle(color: MyTheme.primaryColor,fontSize: 36),
                ),
                Text('/ ${questionData.length}')
              ],
            ),
            questionData[questionNumber],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: questionNumber+1==1?false:true,
                  child: InkWell(
                    onTap: () {
                      questionNumber > 0
                          ? questionNumber--
                          : questionNumber = questionNumber;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: MyTheme.primaryColor,
                        ),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(color: MyTheme.primaryColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (questionNumber == questionData.length - 1) {
                      return;
                    } else {
                      questionNumber++;
                    }
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyTheme.primaryColor,
                      border: Border.all(
                        color: MyTheme.primaryColor,
                      ),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
