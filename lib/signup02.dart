import 'package:flutter/material.dart';
import 'package:easyfood_flutter/customButton.dart';
import 'package:easyfood_flutter/animations.dart';
import 'package:flutter/gestures.dart';
import 'package:easyfood_flutter/forgotpass03.dart';
import 'package:easyfood_flutter/motto01.dart';

class SignUp02 extends StatelessWidget {
  var addgap = SizedBox(height: 20);
  final otpController = List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('Verify email')),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 250,
              child: Text(
                'Please enter the 6 digit OTP code sent to your email to verify your account',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          addgap,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 6; i++)
                Container(
                  width: 40,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: otpController[i],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: Colors.black, // Set the cursor color to black
                    onChanged: (value) {
                      if (value.isEmpty && i > 0) {
                        FocusScope.of(context).previousFocus();
                      } else if (value.isNotEmpty && i < 5) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                      counterText: '',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFC6011)),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          addgap,
          addgap,
          OrangeButton(
            text: 'Submit',
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  SlideLeftAnimation(
                      page: Motto01(),
                      duration: Duration(milliseconds: 300)),
                );
            },
          ),
          addgap,
          RichText(
            text: TextSpan(
              text: "Didn't receive code?",
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: ' Resend',
                  style: TextStyle(
                    color: Color(0xffFC6011),
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        SlideUpAnimation(
                            page: SignUp02(),
                            duration: Duration(milliseconds: 400)),
                      );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
