import 'package:flutter/material.dart';

import '../assets.dart';
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
              // 7 - arafa
              OGroup(
                number: 7,
                buttonText: ksMArafa,
                buttonImage: "assets/images/m_arafa.png",
                targetedScreen: 'm_arafa',
              ),

              // 8 - Ifada to Mozdalifa
              ODivider,
              OGroup(
                number: 8,
                buttonImage: "assets/images/m_arafa.png",
                buttonText: ksMIfadaToMozdalifa,
                targetedScreen: 'm_ifada_to_mozdalifa',
              )
            ],
          ),
        ),
      ],
    );
  }
}
