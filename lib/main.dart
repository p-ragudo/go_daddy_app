import 'package:flutter/material.dart';
import 'package:go_daddy_app/home_page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '9GO Daddy',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(title: '9GO Daddy'),
    );
  }
}

//other codes place here
