import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  // Adjust the gap height as needed
  var addgap = SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')), // Center the title
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Your existing widgets
          Text(
            'Enter your details to login',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          addgap,
          TextInput(hintText: 'Email'),
          addgap,
          PassInput(hintText: 'Password'),
          addgap,
          addgap,
          Center(
            child: OrangeButton(
              text: 'Login', // Override the text property
              onPressed: () {
                // Add your custom onPressed logic here
              },
            ),
          ),
          addgap,
          GestureDetector(
            onTap: () {
              // TODO: Implement forgot password functionality
            },
            child: Text(
              'Forgot your password?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: Text('Or Login with'),
          ),
          addgap,
          NewButton(
            text: 'Login with Facebook',
            onPressed: () {},
            buttonColor: Colors.blue,
            textColor: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          NewButton(
            text: 'Login with Google',
            onPressed: () {},
            buttonColor: Colors.red,
            textColor: Colors.white,
          ),
          Spacer(), // Add Spacer to push the next widget to the bottom
          RichText(
            text: TextSpan(
              text: "Don't have an Account? ",
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Color(0xffFC6011),
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                ),
              ],
            ),
          ),
          addgap,
          addgap,
        ],
      ),
    );
  }
}
