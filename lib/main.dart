import 'package:flutter/material.dart';
import 'package:flutter_application_1/credit.dart';
import 'package:flutter_application_1/forgetpass.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/rank.dart';
import 'package:flutter_application_1/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'asd',
      home: question(),
    );
  }
}
