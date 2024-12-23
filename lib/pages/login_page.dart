import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Column(
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
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.white,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
