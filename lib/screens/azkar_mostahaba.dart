import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/animated_buttom.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

class AzkarMostahaba extends StatefulWidget {
  @override
  _AzkarMostahabaState createState() => _AzkarMostahabaState();
}

class _AzkarMostahabaState extends State<AzkarMostahaba> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksAzkarMostahaba,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // todo Azkar AlSabah
                child: OAnimatedImageTextButton(
                  buttonText: ksAzkarAlSabah,
                  buttonImage: "assets/images/azkar_elsabah.PNG",
                  targetedScreen: "azkar_alsabah",
                ),
              ),
              Expanded(
                // todo Azkar AlMasa
                child: OAnimatedImageTextButton(
                  buttonText: ksAzkarAlMasa,
                  buttonImage: "assets/images/azkar_elmasa.PNG",
                  targetedScreen: "azkar_almasa",
                ),
              ),
            ],
          )),
          Expanded(
              child: OAnimatedImageTextButton(
                buttonText: ksAzkarBaadAlSalah,
                buttonImage: "assets/images/azkar_after_prayer.png",
                targetedScreen: "",
              )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // todo Quran
                child: OAnimatedImageTextButton(
                  buttonText: ksQuran,
                  buttonImage: "assets/images/quran.png",
                  targetedScreen: "",
                ),
              ),
              Expanded(
                // todo Sebha
                child: OAnimatedImageTextButton(
                  buttonText: ksSebha,
                  buttonImage: "assets/images/sebha.png",
                  targetedScreen: "",
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
