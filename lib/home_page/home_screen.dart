import 'package:flutter/material.dart';
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
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    channels = {
      "General": "General Channel for 9GO Daddy Friend Group",
      "Roblox": "Channel for Roblox Shenanigans",
      "Vacation": "Vacation Things",
      "Projects": "Channel for Projects",
      "Drawing": "Para sa mga planong di matutuloy"
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 85,
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
                    Text(widget.title),
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
      ),
      floatingActionButton: _addFloatingButton(
        Colors.white,
        () {}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
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
            Expanded(
              child: ListView.builder(
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10),
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