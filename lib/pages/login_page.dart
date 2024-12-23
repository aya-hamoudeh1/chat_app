import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Image.asset("assets/Images/scholar.png"),
            const Text(
              "Scholar Chat",
              style: TextStyle(
                fontSize: 32,
                fontFamily: "pacifico",
              ),
            ),
            const Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const CustomTextField(
              hintText: "Email",
            ),
            const CustomTextField(
              hintText: "Password",
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
