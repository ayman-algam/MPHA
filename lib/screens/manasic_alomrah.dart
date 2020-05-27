import 'package:flutter/material.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/strings.dart';

class ManasicAlOmrah extends StatelessWidget {
  static const routeName = 'manasicAlOmrah';

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksManasicAlOmrah,
      child: Center(
        child: Text(
          ksManasicAlOmrah,
          style: kTextStyleNormal,
        ),
      ),
    );
  }
}
