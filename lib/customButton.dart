import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final double width = 300;
  final double height = 50;
  final double borderRadius = 25;
  final buttonColor = Color(0xffFC6011);
  final textColor = Colors.white;
  String text = "button";
  VoidCallback onPressed = (){
  };
  OrangeButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(width, height)),
      ),
    );
  }
}


class WhiteButton extends StatelessWidget {
  final double width = 300;
  final double height = 50;
  final double borderRadius = 25;
  final textColor = Color(0xffFC6011);
  final buttonColor = Colors.white;
  String text = "button";
  VoidCallback onPressed = (){
  };
  WhiteButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(width, height)),
      ),
    );
  }
}

class NewButton extends StatelessWidget {
  final double width = 300;
  final double height = 50;
  final double borderRadius = 25;
  var buttonColor = Colors.white;
  var textColor = Colors.black;
  String text = "button";
  VoidCallback onPressed = (){
  };
  NewButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(width, height)),
      ),
    );
  }
}
