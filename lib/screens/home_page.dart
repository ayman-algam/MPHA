import 'package:flutter/material.dart';
import 'package:mpha/classes/animated_buttom.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/usageAssets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHomePage,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: OCardView(),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                // todo Manasic AlHajj
                Expanded(
                    child: OAnimatedImageTextButton(
                      buttonText: ksManasicAlhajj,
                      buttonImage: "assets/images/manasic_alhajj.png",
                      targetedScreen: 'manasic_alhajj',
                    )
                ),

                // todo  Manasic AlOmrah
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksManasicAlOmrah,
                    buttonImage: "assets/images/kaba.PNG",
                    targetedScreen: "manasic_alomrah",
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                // todo Adab AlZiarah
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksAdabAlZiarah,
                    buttonImage: "assets/images/adab_alzeiara.png",
                    targetedScreen: "adab_alziarah",
                  ),
                ),

                // todo Azkar Mostahaba
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksAzkarMostahaba,
                    buttonImage: "assets/images/doaa.png",
                    targetedScreen: "azkar_mostahaba",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}