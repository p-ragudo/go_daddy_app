import "package:flutter/material.dart";
import "package:go_daddy_app/app_bar_9g.dart";

class ChannelScreen extends StatefulWidget {
  final String title;

  const ChannelScreen({super.key, required this.title});

  @override
  State<ChannelScreen> createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar9G(title: widget.title),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Posts",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 20),
            // Expanded(child: child) add contents here
          ],
        ),
      ),
    );
  }
}