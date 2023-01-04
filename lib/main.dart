// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_1/screens/CSSDA_page.dart';
import 'package:project_1/screens/CS_page.dart';
import 'package:project_1/screens/DOMP_page.dart';
import 'package:project_1/screens/MROV_page.dart';
import 'package:project_1/screens/SAPOM_page.dart';
import 'package:project_1/screens/TE_page.dart';
import 'package:project_1/screens/fillout_page.dart';
import 'package:project_1/screens/PH_page.dart';
import 'package:project_1/screens/firstpage.dart';
import 'package:project_1/screens/visitor_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MROV_page());
  }
}
