import 'package:flutter/material.dart';
import 'package:mpha/screens/m_arafa.dart';
import 'package:mpha/screens/m_ifada_to_mozdalifa.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/groupe.dart';

import '../strings.dart';

class HTCAtDay9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksAtDay9,
            textAlign: TextAlign.center,
              style: kTextStyleAppBarTitle
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
              // 7 - arafa
              Group(
                number: 7,
                buttonText: ksMArafa,
                buttonImage: "assets/images/m_arafa.png",
                targetedScreen: MArafa.routeName,
              ),

              // 8 - Ifada to Mozdalifa
              CustomDivider(),
              Group(
                number: 8,
                buttonImage: "assets/images/m_arafa.png",
                buttonText: ksMIfadaToMozdalifa,
                targetedScreen: MIfadaToMozdalifa.routeName,
              )
            ],
          ),
        ),
      ],
    );
  }
}
