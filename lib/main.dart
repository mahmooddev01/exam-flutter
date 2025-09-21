import 'package:exam_project/ui/screens/auth_screen.dart';
import 'package:exam_project/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Flutter',
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
