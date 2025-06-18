import 'package:flutter/material.dart';
import 'package:go_daddy_app/channel_page/channel_screen.dart';

class ChannelContainer extends StatefulWidget {
  final String title;
  final String description;

  const ChannelContainer({
    super.key,
    required this.title,
    required this.description,
  });



  @override
  State<ChannelContainer> createState() => _ChannelContainerState();
}

class _ChannelContainerState extends State<ChannelContainer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChannelScreen(title: widget.title))
          );
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 85,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.description.length > 50
                      ? "${widget.description.substring(0, 50)}....."
                      : widget.description,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

