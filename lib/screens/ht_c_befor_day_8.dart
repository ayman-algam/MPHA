import 'package:flutter/material.dart';

import 'package:mpha/usageAssets.dart';

import '../colors.dart';
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
                number: 1,
                buttonText: ksMIhram,
                buttonImage: "assets/images/m_ihram.png",
                targetedScreen: 'm_ihram',
              ),

              // 2 - tawaf
              ODivider,
              OGroup(
                number: 2,
                buttonImage: "assets/images/m_tawaf.png",
                buttonText: ksMTawaf,
                targetedScreen: 'm_tawaf',
              ),

              // 3 - magam ibrahim
              ODivider,
              OGroup(
                number: 3,
                buttonImage: "assets/images/magam_ibrahim.PNG",
                buttonText: ksMagamIbrahim,
                targetedScreen: 'm_magam_ibrahim',
              ),

              // 4 - zmzm
              ODivider,
              OGroup(
                number: 4,
                buttonImage: "assets/images/m_zamzam.png",
                buttonText: ksZmzm,
                targetedScreen: 'm_drink_from_zamzam',
              ),

              // 5 - saee
              ODivider,
              OGroup(
                number: 5,
                buttonImage: "assets/images/m_saee.png",
                buttonText: ksMSaee,
                targetedScreen: 'm_saee',
              )
            ],
          ),
        ),
      ],
    );
  }
}
