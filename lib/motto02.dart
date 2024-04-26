import 'package:easyfood_flutter/motto03.dart';
import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:easyfood_flutter/animations.dart';
import 'package:easyfood_flutter/motto01.dart';

class Motto02 extends StatelessWidget {
  var addgap = const SizedBox(height: 20);

  Motto02({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Add this
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/motto02.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 30),
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/slide02.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: 300,
              child: Text(
                'Fast & Reliable Delivery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            addgap,
             Container(
              width: 400,
              child: Text(
                'Food Delivery to your home, hall or room wherever you are',
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
            addgap,
            addgap,
            Center(
            child: OrangeButton(
              text: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  SlideLeftAnimation(
                      page: Motto03(),
                      duration: Duration(milliseconds: 300)),
                );
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}
