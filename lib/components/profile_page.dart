import 'package:flutter/material.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/components/message_bubble.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  static String idp = 'profile_page';
  MessageBubble messageBubble = MessageBubble();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/picture.jpg'),
                  radius: 50,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '${loggedInUser.email}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '+234 8086882103',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
