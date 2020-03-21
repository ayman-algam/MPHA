import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/classes/animated_buttom.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/classes/slide_item.dart';

import '../strings.dart';

class MArafa extends StatefulWidget {
  @override
  _MArafaState createState() => _MArafaState();
}

class _MArafaState extends State<MArafa> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksMArafa,
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
                // todo wagibat AlMArafa
                Expanded(
                    child: OAnimatedTextButton(
                      buttonText: ksWagibatAlIhram,
                    )),

                // todo  Sunn AlMArafa
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
                // todo MndobatAlMArafa
                Expanded(
                    child: OAnimatedTextButton(
                      buttonText: ksMndobatAlIhram,
                    )),

                // todo ksMahzorat AlMArafa
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
