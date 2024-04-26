import 'package:flutter/material.dart';
import 'package:easyfood_flutter/formField.dart';
import 'customButton.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/login_screen.dart';
import 'package:easyfood_flutter/animations.dart';
import 'package:easyfood_flutter/motto02.dart';

class Motto03 extends StatelessWidget {
  var addgap = const SizedBox(height: 20);

  Motto03({super.key});
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
                  image: AssetImage('images/motto03.png'),
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
                  image: AssetImage('images/slide03.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: 300,
              child: Text(
                'Scheduled Delivery',
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
              width: 280,
              child: Text(
                'Place order on your preferred time Enjoy food on the go',
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
                      page: Motto02(),                                                    // link to home page
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
