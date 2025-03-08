import 'package:chat_app/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.messageModel,
    super.key,
  });

  final Message messageModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: kPrimaryColor,
        ),
        child: Text(
          messageModel.message,
        ),
      ),
    );
  }
}





class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({
    required this.messageModel,
    super.key,
  });

  final Message messageModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        decoration:  const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: Colors.orange,
        ),
        child: Text(
          messageModel.message,
        ),
      ),
    );
  }
}
