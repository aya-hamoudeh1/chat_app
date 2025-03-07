import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  static String id = "RegisterPage";

  String? email, password;

  GlobalKey<FormState> formKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 75,
              ),
              Image.asset(
                "assets/Images/scholar.png",
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Scholar Chat",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "pacifico",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 75,
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
              CustomTextField(
                onChange: (p0) {
                  email = p0;
                },
                hintText: "Email",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChange: (p0) {
                  password = p0;
                },
                hintText: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () async {
                  if(formKey.currentState!.validate()) {
                    try {
                      await registerUser();
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(context, "weak password");
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(context, "email already exists");
                      }
                    } catch (e) {
                      showSnackBar(context, "there was an error");
                    }
                    showSnackBar(context, "Success");
                  } else {

                  }
                },
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
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
