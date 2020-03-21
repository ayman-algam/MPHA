import 'dart:async';

import 'package:flutter/material.dart';

import '../colors.dart';

class OAnimatedImageTextButton extends StatefulWidget {

  OAnimatedImageTextButton(
      {this.targetedScreen, this.buttonImage, this.buttonText});

  final String targetedScreen;
  final String buttonImage;
  final String buttonText;

  @override
  _OAnimatedImageTextButtonState createState() =>
      _OAnimatedImageTextButtonState();
}

class _OAnimatedImageTextButtonState extends State<OAnimatedImageTextButton> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = true;
          Timer(Duration(milliseconds: 200), () {
            isPressed = false;
            Navigator.pushNamed(context, widget.targetedScreen);
          });

        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(15.0),
            elevation: isPressed ? 20 : 5,
            shadowColor: Colors.black,
            color: kcPrimaryColor,
            child: Container(
              decoration: BoxDecoration(
                  color: kcPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: isPressed ? 10 : 2.0,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Image(
                        image: AssetImage(widget.buttonImage),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        widget.buttonText,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: kcTextSplash,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OAnimatedTextButton extends StatefulWidget {

  OAnimatedTextButton({this.targetedScreen, this.buttonText});

  final String targetedScreen;
  final String buttonText;

  @override
  _OAnimatedTextButtonState createState() => _OAnimatedTextButtonState();
}

class _OAnimatedTextButtonState extends State<OAnimatedTextButton> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = true;
          Timer(Duration(milliseconds: 200), () {
            isPressed = false;
            Navigator.pushNamed(context, widget.targetedScreen);
          });

        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(15.0),
            elevation: isPressed ? 20 : 5,
            shadowColor: Colors.black,
            color: kcPrimaryColor,
            child: Container(
              decoration: BoxDecoration(
                  color: kcPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: isPressed ? 10 : 2.0,
                    ),
                  ]),
              child: Center(
                child: Text(
                  widget.buttonText,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: kcTextSplash,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}