import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/animated_buttom.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/classes/widgets/slide_item.dart';

import '../strings.dart';

class MRamiAlgamarat extends StatefulWidget {
  @override
  _MRamiAlgamaratState createState() => _MRamiAlgamaratState();
}

class _MRamiAlgamaratState extends State<MRamiAlgamarat> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksRamiAlgamarat,
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
                // todo wagibat AlMRamiAlgamarat
                Expanded(
                    child: OAnimatedTextButton(
                  buttonText: ksWagibatAlIhram,
                )),

                // todo  Sunn AlMRamiAlgamarat
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
                // todo MndobatAlMRamiAlgamarat
                Expanded(
                    child: OAnimatedTextButton(
                  buttonText: ksMndobatAlIhram,
                )),

                // todo ksMahzorat AlMRamiAlgamarat
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
    imageUrl: "assets/images/m_arafa.png",
  ),
  Slider(
    imageUrl: "assets/images/m_arafa.png",
  ),
  Slider(
    imageUrl: "assets/images/m_arafa.png",
  ),
  Slider(
    imageUrl: "assets/images/m_arafa.png",
  ),
  Slider(
    imageUrl: "assets/images/m_arafa.png",
  ),
];
