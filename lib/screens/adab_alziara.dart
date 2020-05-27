import 'package:flutter/material.dart';
import 'package:mpha/assets.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/strings.dart';

class AdabAlZiarah extends StatelessWidget {

  static const routeName = 'adabAlZiarah';

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksHajjEfrad,
      child: Center(
        child: Text(
          ksHajjEfrad,
          style: kTextStyleNormal,
        ),
      ),
    );
  }
}