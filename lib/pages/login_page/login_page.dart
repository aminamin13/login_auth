import 'package:flutter/material.dart';
import 'package:login_signup_auth/pages/login_page/components/sign_with.dart';
import 'package:login_signup_auth/pages/login_page/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(
                top: 100.0, left: 30, right: 30, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock_open,
                    size: 100, color: Theme.of(context).colorScheme.primary),
                const SizedBox(height: 30),
                Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16),
                ),
                const SizedBox(height: 20),
                TextFields(
                  hint: 'Email',
                  controller: textController,
                ),
                const SizedBox(height: 10),
                TextFields(
                  hint: 'Password',
                  controller: textController,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(top: 7),
                  child: const Text("Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      )),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.tertiary,
                    child: const Text(
                      "Login",
                    )),
                const SizedBox(height: 20),
                Text("or continue with",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 10,
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignWith(
                        imagePath: 'lib/images/google_logo.png',
                        onTap: () => print("Sign with Google")),
                    const SizedBox(width: 20),
                    SignWith(
                        imagePath: 'lib/images/apple_logo.png',
                        onTap: () => print("Sign with apple")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 10,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Register Now",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 10,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
