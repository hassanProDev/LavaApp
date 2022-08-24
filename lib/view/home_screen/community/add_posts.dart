import 'package:flutter/material.dart';
import 'package:lava_app/controler/post_controler.dart';
import 'package:lava_app/view/component/custom_button.dart';
import 'package:lava_app/view/component/custom_textfield.dart';
import 'package:lava_app/view/themes_colors.dart';

class AddNewPost extends StatelessWidget {
  static const String routeName = 'addPost';
  PostControler postControler=PostControler();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height * 0.80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 16),
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              title: Text(
                'Discussion Forums',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
              ),
            ),
            InkWell(
              child: Image.asset('assets/images/community/addPost.png'),
            ),
            CustomTextField(
              func: (_){
                postControler.postModel!.postTitle=_;
              },
              'Title',
              inputType: TextInputType.text,
            ),
            CustomTextField(
              func:(_){
                postControler.postModel!.postDescription=_;
              },
              'Description',
              inputType: TextInputType.multiline,
              lines: 5,
            ),
            CustomButton(
              onTab: (){
                postControler.addPost(postControler.postModel!.postTitle!, postControler.postModel!.postDescription!);
                Navigator.pop(context);
              },
              text: 'Post',
              color: MyTheme.primaryColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
