import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/animated_buttom.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/classes/widgets/slide_item.dart';

import '../strings.dart';

class MCutAndShaving extends StatefulWidget {
  @override
  _MCutAndShavingState createState() => _MCutAndShavingState();
}

class _MCutAndShavingState extends State<MCutAndShaving> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksMCutAndShaving,
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
                // todo wagibat AlMCutAndShaving
                Expanded(
                    child: OAnimatedTextButton(
                      buttonText: ksWagibatAlIhram,
                    )),

                // todo  Sunn AlMCutAndShaving
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
                // todo MndobatAlMCutAndShaving
                Expanded(
                    child: OAnimatedTextButton(
                      buttonText: ksMndobatAlIhram,
                    )),

                // todo ksMahzorat AlMCutAndShaving
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
