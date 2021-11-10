import 'package:flutter/material.dart';
import 'package:project/Screens/add_data_for_partner.dart';
import 'package:project/Screens/add_documents.dart';
import 'package:project/Screens/customer_verification_screen.dart';
import 'package:project/Screens/feedback_negative_screen.dart';
import 'package:project/Screens/forget_password.dart';
import 'package:project/Screens/home_screen.dart';
import 'package:project/Screens/login_screen.dart';
import 'package:project/Screens/otp_verification_screen.dart';
import 'package:project/Screens/register_screen.dart';
import 'package:project/Screens/search_screen.dart';

import 'Screens/customer_id_generated.dart';
import 'Screens/partner_view.dart';
import 'Screens/partner_view_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}
