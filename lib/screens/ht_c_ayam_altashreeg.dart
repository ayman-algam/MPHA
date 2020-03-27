import 'package:flutter/material.dart';

import '../assets.dart';
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
              // 12 - rami algamarat al3
              OGroup(
                number: 13,
                buttonText: ksRamiAlgamarat,
                buttonImage: "assets/images/m_rami_algamarat.PNG",
                targetedScreen: 'm_rami_algamarat',
              ),

              // 10 - zab alhadi
              ODivider,
              OGroup(
                number: 14,
                buttonImage: "assets/images/m_tawaf.png",
                buttonText: ksMTawafAlWadaa,
                targetedScreen: 'm_tawaf_alefada',
              )
            ],
          ),
        ),
      ],
    );
  }
}
