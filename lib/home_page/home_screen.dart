import 'package:flutter/material.dart';
import 'package:go_daddy_app/home_page/channel_container.dart';

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
        scrolledUnderElevation: 0,
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      floatingActionButton: _addFloatingButton(
        Colors.white,
        () {}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Channels",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ChannelContainer(
                    title: 'General',
                    description: 'General channel for 9Go Daddy friend group',
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: ChannelContainer(
                    title: 'Summer Vacation',
                    description: '2nd Year Summer Vacation',
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: ChannelContainer(
                    title: 'Kumo Pics',
                    description: 'Pictures of Kumo',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FloatingActionButton? _addFloatingButton(Color color, Function() callback) {
    return FloatingActionButton(
      backgroundColor: color,
      child: Center(
        child: Icon(Icons.add, color: Colors.black,),
      ),
      onPressed: () {
        callback();
      },
    );
  }
}