import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static String id ="RegisterPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset("assets/Images/scholar.png"),
            const Text(
              "Scholar Chat",
              style: TextStyle(
                fontSize: 32,
                fontFamily: "pacifico",
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Row(
              children: [
                Text(
                  "REGISTER",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(
              title: "REGISTER",
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "already have an account ?  ",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    " LOGIN",
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
