import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final double borderRadius = 25;
  final double buttonWidth = 300;
  final double buttonHeight = 50;
  final double gapHeight = 20; // Adjust the gap height as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')), // Center the title
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter your details to login',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: gapHeight),
            Container(
              width: buttonWidth,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: gapHeight),
            Container(
              width: buttonWidth,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: gapHeight),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement login functionality
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffFC6011)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(buttonWidth, buttonHeight)),
                ),
              ),
            ),
            SizedBox(height: gapHeight),
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
            
          ],
        ),
      ),
    );
  }
}
