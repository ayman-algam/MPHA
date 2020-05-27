import 'package:flutter/material.dart';
import 'package:mpha/theme.dart';

class BorderedContainer extends StatelessWidget {
  BorderedContainer({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kColor1,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 10)],
              border: Border.all(color: Colors.black)),
          child: child,
        ),
      ),
    );
  }
}
