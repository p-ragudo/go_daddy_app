import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 5,
        shadowColor: Colors.black,
        title: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 40,
              height: 40,
            ), // Replace with Image.asset('assets/logo.png')),
            SizedBox(height: 10),
            Text(widget.title),
          ],
        ),
      ),
      body: ListView(
        children: [
        ],
      ),
    );
  }
}