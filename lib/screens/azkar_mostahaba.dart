import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class AzkarMostahaba extends StatefulWidget {
  @override
  _AzkarMostahabaState createState() => _AzkarMostahabaState();
}

class _AzkarMostahabaState extends State<AzkarMostahaba> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksAzkarMostahaba,
      oAppBarChild: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // todo Azkar AlSabah
                child: MyCardView(
                  lable: ksAzkarAlSabah,
                  imageLocation: "src/images/azkar_elsabah.png",
                  onPress: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ),
              Expanded(
                // todo Azkar AlMasa
                child: MyCardView(
                  lable: ksAzkarAlMasa,
                  imageLocation: "src/images/azkar_elmasa.png",
                  onPress: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // todo Azkar Baad AlSalah
                child: MyCardView(
                  lable: ksAzkarBaadAlSalah,
                  imageLocation: "src/images/azkar_baad_alsalah.png",
                  onPress: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ),
              Expanded(
                // todo
                child: MyCardView(
                  lable: ksAzkarAlSabah,
                  imageLocation: "src/images/azkar_elsabah.png",
                  onPress: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // todo Quran
                child: MyCardView(
                  lable: ksQuran,
                  imageLocation: "src/images/quran.png",
                  onPress: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ),
              Expanded(
                // todo Sebha
                child: MyCardView(
                  lable: ksSebha,
                  imageLocation: "src/images/sebha.png",
                  onPress: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
