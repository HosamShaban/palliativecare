import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      elevation: 0.0,
      title: const Text(
        'محادثة',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    body: Column(
      children: [

      ],
    ),
  );
}
}
