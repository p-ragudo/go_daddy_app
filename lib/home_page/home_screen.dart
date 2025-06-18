import 'package:flutter/material.dart';
import 'package:go_daddy_app/app_bar_9g.dart';
import 'package:go_daddy_app/home_page/channel_container.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Map<String, String> channels;

  @override
  void dispose() => super.dispose();

  @override
  void initState() {
    super.initState();
    channels = {
      "General": "General Channel for 9GO Daddy Friend Group",
      "Roblox": "Channel for Roblox Shenanigans",
      "Vacation": "Vacation Things",
      "Projects": "Channel for Projects",
      "Drawing": "Para sa mga planong di matutuloy",
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar9G(title: widget.title),
      floatingActionButton: _addFloatingButton(
        Colors.white,
        () {}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
        padding: EdgeInsets.all(10),
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
            Expanded(
              child: ListView.builder(
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                    child: ChannelContainer(
                        title: channels.entries.elementAt(index).key,
                        description: channels.entries.elementAt(index).value
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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