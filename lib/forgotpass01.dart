import 'package:easyfood_flutter/forgotpass03.dart';
import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'package:easyfood_flutter/customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:easyfood_flutter/animations.dart';
import 'package:easyfood_flutter/forgotpass02.dart';

class ForgotPass01 extends StatelessWidget {
  var addgap = SizedBox(height: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('Reset Password')), // Center the title
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 250,
            child: Text(
              'Please enter your email to recieve a verification code',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          addgap,
          addgap,
          TextInput(hintText: 'Email'),
          addgap,
          Center(
            child: OrangeButton(
              text: 'Send',
              onPressed: () {
                Navigator.push(
                  context,
                  SlideLeftAnimation(
                      page: ForgotPass02(),
                      duration: Duration(milliseconds: 300)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
