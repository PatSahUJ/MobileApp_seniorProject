import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:senior_project/style/my_text_style.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  nothing() {}

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color(0xffffefe2),
      body: Stack(
        children: [
          Positioned(
            top: 20.0, // Top edge of the Stack
            right: 10.0, // Right edge of the Stack
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Center(
                child: Text('Sign Up', style: MyTextStyles.heading2),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Login', style: MyTextStyles.heading1),
                  const SizedBox(height: 60.0),
                  const Text('Your Email', style: MyTextStyles.lightText),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 40.0),
                  const Text('Password', style: MyTextStyles.lightText),
                  const TextField(
                    obscureText: true,
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 100.0),
                          decoration: BoxDecoration(
                            color: const Color(0xff383961), // Background color
                            borderRadius:
                                BorderRadius.circular(25.0), // Rounded corners
                          ),
                          child: const Text(
                            'Log In',
                            style: MyTextStyles.mediumWhiteText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
