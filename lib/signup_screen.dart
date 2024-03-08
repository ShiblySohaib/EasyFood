import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:easyfood_flutter/animations.dart';


class SignupScreen extends StatelessWidget {
  var addgap = SizedBox(height: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign Up')), // Center the title
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Enter your details to sign up',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          addgap,
          TextInput(hintText: 'Name'),
          addgap,
          TextInput(hintText: 'Email address'),
          addgap,
          TextInput(hintText: 'Mobile Number'),
          addgap,
          TextInput(hintText: 'Address'),
          addgap,
          PassInput(hintText: 'Password'),
          addgap,
          PassInput(hintText: 'Confirm Password'),
          addgap,
          addgap,
          Center(
            child: OrangeButton(
              text: 'Sign Up',
              onPressed: () {
                // Add your custom onPressed logic here
              },
            ),
          ),
          Spacer(),
          RichText(
            text: TextSpan(
              text: "Already have an Account? ",
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Color(0xffFC6011),
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        SlideUpAnimation(
                            page: LoginScreen(),
                            duration: Duration(milliseconds: 400)),
                      );
                    },
                ),
              ],
            ),
          ),
          addgap,
        ],
      ),
    );
  }
}

