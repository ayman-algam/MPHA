import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/image_text_button.dart';

class Group extends StatelessWidget {
  Group({this.number, this.targetedScreen, this.buttonImage, this.buttonText});

  final int number;
  final String targetedScreen;
  final String buttonImage;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          height: 72.0,
          width: 72.0,
          child: Stack(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.circle,
                size: 70.0,
                color: kColor2,
              ),
              Center(
                child: Text(
                  "$number",
                  style: TextStyle(color: kColor2),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 170.0,
          width: 150.0,
          child: ImageTextButton(
            imageUrl: buttonImage,
            targetedScreen: targetedScreen,
            title: buttonText,
            type: 2,
            isLanScape: false,
          ),
        )
      ],
    );
  }
}