import 'package:flutter/cupertino.dart';
import '../constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 150,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      margin: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        color: kPrimaryColor,
      ),
      child: const Text(
        "I am a new user",
      ),
    );
  }
}
