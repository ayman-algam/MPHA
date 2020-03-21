import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/classes/animated_buttom.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/classes/slide_item.dart';

import '../strings.dart';

class MTawafAlEfada extends StatefulWidget {
  @override
  _MTawafAlEfadaState createState() => _MTawafAlEfadaState();
}

class _MTawafAlEfadaState extends State<MTawafAlEfada> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksMTawafAlefada,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: SlideArea(slideList),
          ),
          Expanded(
              flex: 1,
              child: OAnimatedTextButton(
                buttonText: ksBefore,
              )),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                // todo wagibat AlMTawafAlEfada
                Expanded(
                    child: OAnimatedTextButton(
                  buttonText: ksWagibatAlIhram,
                )),

                // todo  Sunn AlMTawafAlEfada
                Expanded(
                    child: OAnimatedTextButton(
                  buttonText: ksSunnAlIhram,
                ))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                // todo MndobatAlMTawafAlEfada
                Expanded(
                    child: OAnimatedTextButton(
                  buttonText: ksMndobatAlIhram,
                )),

                // todo ksMahzorat AlMTawafAlEfada
                Expanded(
                  child: OAnimatedTextButton(
                    buttonText: ksMahzoratAlIhram,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: OAnimatedTextButton(
                buttonText: ksVedios,
              )),
        ],
      ),
    );
  }
}

class Slider {
  final String imageUrl;

  Slider({this.imageUrl});
}

final slideList = [
  Slider(
    imageUrl: "assets/images/m_tawaf.png",
  ),
  Slider(
    imageUrl: "assets/images/m_tawaf.png",
  ),
  Slider(
    imageUrl: "assets/images/m_tawaf.png",
  ),
  Slider(
    imageUrl: "assets/images/m_tawaf.png",
  ),
  Slider(
    imageUrl: "assets/images/m_tawaf.png",
  ),
];
