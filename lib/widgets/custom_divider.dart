import 'package:flutter/material.dart';
import 'package:mpha/theme.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Divider(
        height: 1.0,
        color: kColor1,
      ),
    );
  }
}
