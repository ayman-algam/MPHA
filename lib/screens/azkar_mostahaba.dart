import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class AzkarMostahaba extends StatefulWidget {
  @override
  _AzkarMostahabaState createState() => _AzkarMostahabaState();
}

class _AzkarMostahabaState extends State<AzkarMostahaba> {
  @override
  Widget build(BuildContext context) {
    return OSliverAppBar(
      lable: ksAzkarMostahaba,
      backgroundImagePath: "src/images/doaa.png",
      child: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyCardView(
                      cardColor: Colors.white,
                      myChild: ImageTextContainer(
                        lable: ksAzkarAlSabah,
                        imageLocation: "src/images/azkar_elsabah.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCardView(
                      cardColor: Colors.white,
                      myChild: ImageTextContainer(
                        lable: ksAzkarAlSabah,
                        imageLocation: "src/images/azkar_elsabah.png",
                      ),
                    ),
                  ),
                ],
              )
          ),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyCardView(
                      cardColor: Colors.white,
                      myChild: ImageTextContainer(
                        lable: ksAzkarAlSabah,
                        imageLocation: "src/images/azkar_elsabah.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCardView(
                      cardColor: Colors.white,
                      myChild: ImageTextContainer(
                        lable: ksAzkarAlSabah,
                        imageLocation: "src/images/azkar_elsabah.png",
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
