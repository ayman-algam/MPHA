import 'package:flutter/material.dart';
import 'package:mpha/screens/m_cut_and_shaving.dart';
import 'package:mpha/screens/m_rami_gamrat_alagaba.dart';
import 'package:mpha/screens/m_ransom.dart';
import 'package:mpha/screens/m_tawaf_alefada.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/groupe.dart';

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
              // 9 - gamrat alagaba
              Group(
                number: 9,
                buttonText: ksMGamratAlagaba,
                buttonImage: "assets/images/m_rami_algamarat_alagaba.PNG",
                targetedScreen: MRamiGamratAlagaba.routeName,
              ),

              // 10 - zab alhadi
              CustomDivider(),
              Group(
                number: 10,
                buttonImage: "assets/images/m_ransom.png",
                buttonText: ksMRansom,
                targetedScreen: MRansom.routeName,
              ),

              // 11 - cut and shaving
              CustomDivider(),
              Group(
                number: 11,
                buttonImage: "assets/images/m_cutting_and_shaving.png",
                buttonText: ksMCutAndShaving,
                targetedScreen: MCutAndShaving.routeName,
              ),

              // 12 - tawaf al efada
              CustomDivider(),
              Group(
                number: 12,
                buttonImage: "assets/images/m_tawaf.png",
                buttonText: ksMTawafAlefada,
                targetedScreen: MTawafAlEfada.routeName,
              )
            ],
          ),
        ),
      ],
    );
  }
}
