import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:my_first_app/ui/contact_page.dart';
import 'package:my_first_app/ui/delivery_page.dart';
import 'package:my_first_app/ui/dispatch_history_page.dart';
import 'package:my_first_app/ui/dispatch_request.dart';
import 'package:my_first_app/ui/earning_page.dart';
import 'package:my_first_app/ui/free_deliveries_page.dart';
import 'package:my_first_app/ui/login_page.dart';
import 'package:my_first_app/ui/menu_page.dart';
import 'package:my_first_app/ui/order_completed.dart';
import 'package:my_first_app/ui/nearest_hub_page.dart';
import 'package:my_first_app/ui/pick_up_page.dart';
import 'package:my_first_app/utils/app_colors.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: AppColors.primaryMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: AppColors.colorPrimary,
        accentColor: AppColors.colorAccent,
        primaryColorDark: AppColors.colorAccent,
        canvasColor: AppColors.colorWhite,
      ),
     home: DeliveryPage(),
    );
  }
}
