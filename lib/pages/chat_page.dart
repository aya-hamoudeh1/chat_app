import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  static String id = "ChatPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                kLogo,
                height: 50,
              ),
              const Text("chat"),
            ],
          ),
          centerTitle: true,
        ),
        body: const ChatBubble(),
    );
  }
}

