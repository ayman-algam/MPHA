import 'package:flutter/material.dart';
import 'package:mpha/screens/m_Ihram.dart';
import 'package:mpha/screens/m_drink_from_zamzam.dart';
import 'package:mpha/screens/m_magam_ibrahim.dart';
import 'package:mpha/screens/m_saee.dart';
import 'package:mpha/screens/m_tawaf.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/groupe.dart';

import '../assets.dart';
import '../strings.dart';

class HTCBefore8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksBeforOf8,
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
                number: 1,
                buttonText: ksMIhram,
                buttonImage: "assets/images/m_ihram.png",
                targetedScreen: MIhram.routeName,
              ),

              // 2 - tawaf
              CustomDivider(),
              Group(
                number: 2,
                buttonImage: "assets/images/m_tawaf.png",
                buttonText: ksMTawaf,
                targetedScreen: MTawaf.routeName,
              ),

              // 3 - magam ibrahim
              CustomDivider(),
              Group(
                number: 3,
                buttonImage: "assets/images/magam_ibrahim.PNG",
                buttonText: ksMagamIbrahim,
                targetedScreen: MMagamIbrahim.routeName,
              ),

              // 4 - zmzm
              CustomDivider(),
              Group(
                number: 4,
                buttonImage: "assets/images/m_zamzam.png",
                buttonText: ksZmzm,
                targetedScreen: MDrinkFromZamzam.routeName,
              ),

              // 5 - saee
              CustomDivider(),
              Group(
                number: 5,
                buttonImage: "assets/images/m_saee.png",
                buttonText: ksMSaee,
                targetedScreen: MSaee.routeName,
              )
            ],
          ),
        ),
      ],
    );
  }
}
