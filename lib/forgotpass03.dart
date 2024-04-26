import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:easyfood_flutter/animations.dart';


class ForgotPass03 extends StatelessWidget {
  var addgap = SizedBox(height: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('New Password')), // Center the title
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 250,
            child : Text(
              'Please enter a new password and confirm the password.',
              softWrap: true,
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
          ),
          ),

          addgap,
          addgap,
          TextInput(hintText: 'New Password'),
          addgap,
          TextInput(hintText: 'Confirm Password'),
          addgap,
          Center(
            child: OrangeButton(
              text: 'Next',
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
