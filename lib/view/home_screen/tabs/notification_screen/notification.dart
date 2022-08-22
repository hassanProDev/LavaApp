
import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/tabs/notification_screen/custom_notification/custom_notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Notification',style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              separatorBuilder: (context,index)=>Divider(),
              itemBuilder: (context, index) => NotificationItem(),
            ),
          ),
        ],
      ),
    );
  }
}
