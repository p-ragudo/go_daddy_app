import 'package:flutter/material.dart';

class AppBar9G extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBar9G({super.key, required this.title});

  @override
  Size get preferredSize => Size.fromHeight(85);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      shadowColor: Colors.black,
      flexibleSpace: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(height: 5),
                  Text(title),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.person,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey,
          height: 1.0,
        ),
      ),
    );
  }
}