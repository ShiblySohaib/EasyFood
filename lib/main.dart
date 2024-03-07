import 'package:flutter/material.dart';
import 'package:easyfood_flutter/landing.dart'; // Import the landing.dart file

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay navigation to the landing.dart screen
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LandingScreen()),
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

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}