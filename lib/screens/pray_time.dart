import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

import '../assets.dart';

class PrayTime extends StatefulWidget {
  @override
  _PrayTimeState createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksPrayTime,
      child: Center(
        child: Text(
          ksPrayTime,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
