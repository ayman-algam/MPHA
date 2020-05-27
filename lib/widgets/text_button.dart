import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
