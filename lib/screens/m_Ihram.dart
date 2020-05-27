import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/widgets/slide_item.dart';
import 'package:mpha/widgets/text_button.dart';

import '../strings.dart';

class MIhram extends StatelessWidget {

  static const routeName = 'mIhram';

  @override
  Widget build(BuildContext context) {
    return MainWidget(
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
              child: TextButton(
                title: ksBefore,
              )),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                // todo wagibat AlMCutAndShaving
                Expanded(
                    child: TextButton(
                      title: ksWagibatAlIhram,
                    )),

                // todo  Sunn AlMCutAndShaving
                Expanded(
                    child: TextButton(
                      title: ksSunnAlIhram,
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
                    child: TextButton(
                      title: ksMndobatAlIhram,
                    )),

                // todo ksMahzorat AlMCutAndShaving
                Expanded(
                  child: TextButton(
                    title: ksMahzoratAlIhram,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: TextButton(
                title: ksVedios,
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
    imageUrl: "assets/images/m_ihram.png",
  ),
  Slider(
    imageUrl: "assets/images/m_ihram.png",
  ),
  Slider(
    imageUrl: "assets/images/m_ihram.png",
  ),
  Slider(
    imageUrl: "assets/images/m_ihram.png",
  ),
  Slider(
    imageUrl: "assets/images/m_ihram.png",
  ),
];
