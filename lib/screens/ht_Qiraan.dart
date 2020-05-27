import 'package:flutter/material.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/strings.dart';

class HTQiraan extends StatelessWidget {
  static const routeName = 'hTQiraan';
  @override

  Widget build(BuildContext context) {
    return MainWidget(
      title: ksHajjAlQiran,
      child: Center(
        child: Text(
          ksHajjAlQiran,
          style: kTextStyleNormal,
        ),
      ),
    );
  }
}
