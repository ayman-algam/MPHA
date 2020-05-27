import 'package:flutter/material.dart';
import 'package:mpha/screens/m_rami_algamarat.dart';
import 'package:mpha/screens/m_tawaf_alefada.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/groupe.dart';

import '../strings.dart';

class HTCAyamAltashreeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksAyamAltashreeg,
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
              // 12 - rami algamarat al3
              Group(
                number: 13,
                buttonText: ksRamiAlgamarat,
                buttonImage: "assets/images/m_rami_algamarat.PNG",
                targetedScreen: MRamiAlgamarat.routeName,
              ),

              // 10 - zab alhadi
              CustomDivider(),
              Group(
                number: 14,
                buttonImage: "assets/images/m_tawaf.png",
                buttonText: ksMTawafAlWadaa,
                targetedScreen: MTawafAlEfada.routeName,
              )
            ],
          ),
        ),
      ],
    );
  }
}
