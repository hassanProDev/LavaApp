import 'package:flutter/material.dart';
import 'package:lava_app/model/post_model.dart';
import 'package:lava_app/view/themes_colors.dart';

class CustomPost extends StatelessWidget {
  PostModel? postModel=PostModel();
  CustomPost({this.postModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Color(0x1A000000)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: Image.asset('assets/images/community/postImg.png'),
                title: Text('Mayar Mohamed'),
                subtitle: Text('a month ago'),
              ),
              Text('${postModel!.postTitle}',style:TextStyle(color: MyTheme.primaryColor,fontSize: 20),),
              Text(
                  '${postModel!.postDescription}'),
            ],
          ),
        ),
        Image.asset('assets/images/community/post.png',fit: BoxFit.fill,),
        ListTile(
          leading: Image.asset('assets/images/community/like.png'),
          title: Text('0 likes'),
          trailing: Text(
            '2 Replaies',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );

  }
}
