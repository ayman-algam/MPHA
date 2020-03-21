import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mpha/usageAssets.dart';

import '../colors.dart';
import '../strings.dart';

class HTCAtDay8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksAtDay8,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: kcTextSplash),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 20.0, left: 50.0, right: 50.0),
          child: Divider(
            thickness: 4.0,
            color: kcTextSplash,
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              // 1 - ihram
              OGroup(
                number: 6,
                buttonText: ksMSleepInMena,
                buttonImage: "assets/images/m_ihram.png",
                targetedScreen: 'm_sleep_in_mena',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
