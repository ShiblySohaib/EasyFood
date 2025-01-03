import 'package:flutter/material.dart';
import 'package:easyfood_flutter/landing.dart';
import 'package:easyfood_flutter/animations.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        SlideLeftAnimation(
            page: LandingScreen(),
            duration: Duration(milliseconds: 800)),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splash_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            '',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}