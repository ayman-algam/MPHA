import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mpha/usageAssets.dart';

import '../colors.dart';
import '../strings.dart';

class HTCAtDay10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksAtDay10,
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
              // 9 - gamrat alagaba
              OGroup(
                number: 9,
                buttonText: ksMGamratAlagaba,
                buttonImage: "assets/images/m_rami_algamarat_alagaba.PNG",
                targetedScreen: 'm_rami_gamrat_alagaba',
              ),

              // 10 - zab alhadi
              ODivider,
              OGroup(
                number: 10,
                buttonImage: "assets/images/m_ransom.png",
                buttonText: ksMRansom,
                targetedScreen: 'm_ransom',
              ),

              // 11 - cut and shaving
              ODivider,
              OGroup(
                number: 11,
                buttonImage: "assets/images/m_cutting_and_shaving.png",
                buttonText: ksMCutAndShaving,
                targetedScreen: 'm_cut_and_shaving',
              ),

              // 12 - twaf al efada
              ODivider,
              OGroup(
                number: 12,
                buttonImage: "assets/images/m_tawaf.png",
                buttonText: ksMTawafAlefada,
                targetedScreen: 'm_tawaf_alefada',
              )
            ],
          ),
        ),
      ],
    );
  }
}
