import 'package:easyfood_flutter/signup02.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:easyfood_flutter/animations.dart';

class SignupScreen extends StatelessWidget {
  var addgap = SizedBox(height: 20);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          customTextInput(hintText: 'Name'),
          addgap,
          customTextInput2(
              hintText: 'Email address', controller: emailController),
          addgap,
          customTextInput(hintText: 'Mobile Number'),
          addgap,
          customTextInput(hintText: 'Address'),
          addgap,
          customPassInput2(
              hintText: 'Password', controller: passwordController),
          addgap,
          customPassInput(hintText: 'Confirm Password'),
          addgap,
          addgap,
          Center(
            child: OrangeButton(
              text: 'Sign Up',
              // changed onpressed logic 
              onPressed: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);
                  Navigator.pushReplacement(
                    context,
                    SlideLeftAnimation(
                        page: SignUp02(),
                        duration: Duration(milliseconds: 300)),
                  );
                } on FirebaseAuthException catch (e) {
                  String message = 'hello';
                  if (e.code == 'weak-password') {
                    message = 'The password provided is too weak.';
                  } else if (e.code == 'email-already-in-use') {
                    message = 'The account already exists for that email.';
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  );
                } catch (e) {
                  print(e);
                }
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
