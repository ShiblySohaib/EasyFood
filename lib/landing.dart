import 'package:easyfood_flutter/customButton.dart';
import 'package:easyfood_flutter/signup_screen.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:easyfood_flutter/animations.dart';

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
            Spacer(),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20), 
                child: Column(
                  children: [
                    OrangeButton(
                      text: 'Login',
                      onPressed: () {
                        Navigator.push(
                          context,
                          SlideLeftAnimation(
                              page: LoginScreen(),
                              duration: Duration(milliseconds: 300)),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    WhiteButton(
                      text: 'Create an Account',
                      onPressed: () {
                        Navigator.push(
                          context,
                          SlideLeftAnimation(
                              page: SignupScreen(),
                              duration: Duration(milliseconds: 300)),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
