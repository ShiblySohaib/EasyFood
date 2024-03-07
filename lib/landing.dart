import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/landing.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              '',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height:4),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement signup functionality
              },
              child: Text('Login'),
            ),
            SizedBox(height:2),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
              },
              child: Text('Signup'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
//hello