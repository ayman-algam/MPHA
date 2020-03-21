import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

Widget sizedBoxHeight(int heightValue) {
  return SizedBox(
    height: heightValue.toDouble(),
  );
}

Widget sizedBoxWidth(int widthValue) {
  return SizedBox(
    width: widthValue.toDouble(),
  );
}

final ksTextStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    fontFamily: 'Pacifico',
    color: Color(0xFFf3eab7));

final ksTextStyle2 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  fontFamily: 'SourceSansPro',
  color: kcTextSplash,
  letterSpacing: 2.0,
);

final ksTextStyle3 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 24.0,
  fontFamily: 'SourceSansPro',
  color: kcTextSplash,
  letterSpacing: 1.0,
);


class OCardView extends StatelessWidget {

  OCardView({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: kcPrimaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
              ),
            ]),
        child: child,
      ),
    );
  }
}