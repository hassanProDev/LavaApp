import 'package:flutter/material.dart';


class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          child: Image.asset('assets/images/notification/Initials.png',fit: BoxFit.fill,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        title: Text(
          'Joy Arnold left 6 comments on Your Post'
        ),subtitle: Text('Yesterday at 11:42 PM'),
      ),
    );
  }
}
