import 'package:flutter/material.dart';
import 'package:mpha/screens/azkar_after_prayer.dart';
import 'package:mpha/screens/azkar_almasa.dart';
import 'package:mpha/screens/azkar_alsabah.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/widgets/image_text_button.dart';
import 'package:mpha/widgets/main_widget.dart';

class AzkarMostahaba extends StatelessWidget {

  static const routeName = 'azkarMostahaba';

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery
            .of(context)
            .orientation == Orientation.landscape;

    return MainWidget(
      title: ksAzkarMostahaba,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    // todo Azkar AlSabah
                    child: ImageTextButton(
                      title: ksAzkarAlSabah,
                      imageUrl: "assets/images/evening_icon.PNG",
                      targetedScreen: AzkarAlSabah.routeName,
                      type: 2,
                      isLanScape: isLandScape,
                    ),
                  ),
                  Expanded(
                    // todo Azkar AlMasa
                    child: ImageTextButton(
                      title: ksAzkarAlMasa,
                      imageUrl: "assets/images/morning_icon.PNG",
                      targetedScreen: AzkarAlmasa.routeName,
                      type: 2,
                      isLanScape: isLandScape,
                    ),
                  ),
                ],
              )),
          Expanded(
              child: ImageTextButton(
                title: ksAzkarBaadAlSalah,
                imageUrl: "assets/images/azkar_after_prayer.png",
                targetedScreen: AzkarAfterPrayer.routeName,
                type: 2,
                isLanScape: isLandScape,
              )),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    // todo Quran
                    child: ImageTextButton(
                      title: ksQuran,
                      imageUrl: "assets/images/quran.png",
                      targetedScreen: "",
                      type: 2,
                      isLanScape: isLandScape,
                    ),
                  ),
                  Expanded(
                    // todo Sebha
                    child: ImageTextButton(
                      title: ksSebha,
                      imageUrl: "assets/images/sebha.png",
                      targetedScreen: "",
                      type: 2,
                      isLanScape: isLandScape,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
