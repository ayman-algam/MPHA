import 'package:flutter/material.dart';
import 'package:mpha/classes/animated_buttom.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';

class ManasicAlhajj extends StatefulWidget {
  @override
  _ManasicAlhajjState createState() => _ManasicAlhajjState();
}

class _ManasicAlhajjState extends State<ManasicAlhajj> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksManasicAlhajj,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: OAnimatedTextButton(
              buttonText: ksHajjEfrad,
              targetedScreen: "ht_ifraad",
            ),
          ),
          Expanded(
            child: OAnimatedTextButton(
              buttonText: ksHajjAlQiran,
              targetedScreen: "ht_qiraan",
            ),
          ),
          Expanded(
              child: OAnimatedTextButton(
                buttonText: ksHajjAltamattu,
                targetedScreen: "ht_tamattu",
              )
          ),
        ],
      ),
    );
  }
}
