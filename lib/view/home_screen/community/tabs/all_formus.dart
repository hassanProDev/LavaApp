import 'package:flutter/material.dart';
import 'package:lava_app/model/post_model.dart';
import 'package:lava_app/view/home_screen/community/custom/custom_post.dart';

class AllFormus extends StatelessWidget {
  const AllFormus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => CustomPost(postModel: posts[index],),
      ),
    );
  }
}
