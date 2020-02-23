import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class PrayTime extends StatefulWidget {
  @override
  _PrayTimeState createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksPrayTime,
      oAppBarChild:  Center(
        child: Text(
          ksPrayTime,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
