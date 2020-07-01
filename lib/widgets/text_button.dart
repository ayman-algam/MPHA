import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../theme.dart';

class TextButton extends StatelessWidget {
  final String title;
  final String targetedScreen;

  const TextButton({
    Key key,
    @required this.title,
    @required this.targetedScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, targetedScreen);
      },
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.white,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: kColor1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 10)],
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: kTextStyleButtonTitle.copyWith(color: kColor2),
          ),
        ),
      ),
    );
  }
}
