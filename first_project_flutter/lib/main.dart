// import 'package:first_project_flutter/home_screen.dart';
import 'package:first_project_flutter/counter.dart';
import 'package:first_project_flutter/login_page.dart';
import 'package:first_project_flutter/messenger_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Counter());
  }
}
