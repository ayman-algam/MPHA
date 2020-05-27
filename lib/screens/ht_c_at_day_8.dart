import 'package:flutter/material.dart';
import 'package:mpha/screens/m_sleep_in_mena.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/groupe.dart';

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
            style: kTextStyleAppBarTitle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 20.0, left: 50.0, right: 50.0),
          child: Divider(
            thickness: 4.0,
            color: kColor2,
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              // 1 - ihram
              Group(
                number: 6,
                buttonText: ksMSleepInMena,
                buttonImage: "assets/images/m_mena.PNG",
                targetedScreen: MSleepInMena.routeName,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
