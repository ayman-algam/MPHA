import 'package:flutter/material.dart';
import 'package:mpha/screens/ht_Ifraad.dart';
import 'package:mpha/widgets/bordered_container.dart';
import 'package:mpha/widgets/image_text_button.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/screens/azkar_mostahaba.dart';
import 'package:mpha/strings.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'hamePage';

  @override
  Widget build(BuildContext context) {
    // to control view in case rotation of devise
    final isLandScape =
        MediaQuery
            .of(context)
            .orientation == Orientation.landscape;

    return MainWidget(
      title: ksHomePage,
      child: isLandScape
          ? Row(
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width * .5,
            child: BorderedContainer(),
          ),
          buildExpandedGridVew(isLandScape),
        ],
      )
          : Column(
        children: <Widget>[
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * .4,
            child: BorderedContainer(),
          ),
          buildExpandedGridVew(isLandScape)
        ],
      ),
    );
  }

  Expanded buildExpandedGridVew(bool isLanScape) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ImageTextButton(
                    title: ksManasicAlhajj,
                    imageUrl: 'assets/images/manasic_alhajj.png',
                    targetedScreen: HTIfraad.routeName,
                    type: 1,
                    isLanScape: isLanScape),
                ImageTextButton(
                    title: ksManasicAlOmrah,
                    imageUrl: 'assets/images/kaba.PNG',
                    targetedScreen: '',
                    type: 1,
                    isLanScape: isLanScape),
              ],
            ),
            Row(
              children: <Widget>[
                ImageTextButton(
                    title: ksAdabAlZiarah,
                    imageUrl: 'assets/images/adab_alzeiara.png',
                    targetedScreen: '',
                    type: 1,
                    isLanScape: isLanScape),
                ImageTextButton(
                    title: ksAzkarMostahaba,
                    imageUrl: 'assets/images/doaa.png',
                    targetedScreen: AzkarMostahaba.routeName,
                    type: 1,
                    isLanScape: isLanScape),
              ],
            )
          ],
        ),
      ),
    );
  }
}
