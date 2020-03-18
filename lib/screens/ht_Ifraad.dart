import 'package:flutter/material.dart';
import 'package:mpha/classes/animated_buttom.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';

class HTIfraad extends StatefulWidget {
  @override
  _HTIfraadState createState() => _HTIfraadState();
}

class _HTIfraadState extends State<HTIfraad> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjEfrad,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksIhram,
                    buttonImage: "assets/images/m_ihram.png",
                    targetedScreen: "m_ihram",
                  ),
                ),
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksTwaf,
                    buttonImage: "assets/images/m_tawaf.png",
                    targetedScreen: "m_ihram",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksSaee,
                    buttonImage: "assets/images/m_saee.png",
                    targetedScreen: "m_saee",
                  ),
                ),
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksArafa,
                    buttonImage: "assets/images/m_arafa.png",
                    targetedScreen: "m_ihram",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksRamiAlgamarat,
                    buttonImage: "assets/images/m_rami_algamarat.png",
                    targetedScreen: "m_ihram",
                  ),
                ),
                Expanded(
                  child: OAnimatedImageTextButton(
                    buttonText: ksIhram,
                    buttonImage: "assets/images/ihram.png",
                    targetedScreen: "m_ihram",
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
