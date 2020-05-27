import 'package:flutter/material.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/strings.dart';

class PrayTime extends StatelessWidget {

  static const routeName = 'prayTime';

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksPrayTime,
      child: Center(
        child: Text(
          ksPrayTime,
          style: kTextStyleNormal,
        ),
      ),
    );
  }
}
