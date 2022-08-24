import 'package:lava_app/model/post_model.dart';

class PostControler{
  PostModel? postModel=PostModel();

  void addPost(String title,String descrip){
    posts.add(PostModel(postTitle:title,postDescription: descrip));
  }
}