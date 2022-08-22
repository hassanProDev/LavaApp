import 'package:flutter/cupertino.dart';
import 'package:lava_app/view/home_screen/tabs/barcode_screen/scan_screen.dart';
import 'package:lava_app/view/home_screen/tabs/notification_screen/notification.dart';
import 'package:lava_app/view/home_screen/tabs/questions_screen/questions_screen.dart';
import 'package:lava_app/view/home_screen/tabs/sales_screen/sales_screen.dart';

List<Widget> tabs = [
  SalesScreen(),
  QuestionScreen(),
  NotificationScreen(),
  ScanScreen(),
];
