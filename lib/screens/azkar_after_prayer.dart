import 'package:flutter/material.dart';
import 'package:mpha/models/ziker_content.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/widgets/ziker_generator.dart';

import '../strings.dart';

class AzkarAfterPrayer extends StatelessWidget {

  static const routeName = 'azkarAfterPrayTime';

  final List<ZikerContent> _azkarAfterPrayer = [

    ZikerContent(
      id: 1,
      numberOfRepetition: 1,
      zt: aat1,
      zc: aac1,
      zf: aaf1,
    ),
    ZikerContent(
      id: 2,
      numberOfRepetition: 1,
      zt: aat2,
      zc: aac2,
      zf: aaf2,
    ),
    ZikerContent(
      id: 3,
      numberOfRepetition: 1,
      zt: aat3,
      zc: aac3,
      zf: aaf3,
    ),
    ZikerContent(
      id: 4,
      numberOfRepetition: 33,
      zt: aat4,
      zc: aac4,
      zf: aaf4,
    ),
    ZikerContent(
      id: 5,
      numberOfRepetition: 33,
      zt: aat5,
      zc: aac5,
      zf: aaf5,
    ),
    ZikerContent(
      id: 6,
      numberOfRepetition: 33,
      zt: aat6,
      zc: aac6,
      zf: aaf6,
    ),
    ZikerContent(
      id: 7,
      numberOfRepetition: 1,
      zt: aat7,
      zc: aac7,
      zf: aaf7,
    ),
    ZikerContent(
      id: 8,
      numberOfRepetition: 3,
      zt: aat8,
      zc: aac8,
      zf: aaf8,
    ),
    ZikerContent(
      id: 9,
      numberOfRepetition: 3,
      zt: aat9,
      zc: aac9,
      zf: aaf9,
    ),
    ZikerContent(
      id: 10,
      numberOfRepetition: 3,
      zt: aat10,
      zc: aac10,
      zf: aaf10,
    ),
    ZikerContent(
      id: 11,
      numberOfRepetition: 1,
      zt: aat11,
      zc: aac11,
      zf: aaf11,
    ),
    ZikerContent(
      id: 12,
      numberOfRepetition: 10,
      zt: aat12,
      zc: aac12,
      zf: aaf12,
    ),
    ZikerContent(
      id: 13,
      numberOfRepetition: 1,
      zt: aat13,
      zc: aac13,
      zf: aaf13,
    ),
    ZikerContent(
      id: 14,
      numberOfRepetition: 7,
      zt: aat14,
      zc: aac14,
      zf: aaf14,
    ),
    ZikerContent(
      id: 15,
      numberOfRepetition: 1,
      zt: aat15,
      zc: aac15,
      zf: aaf15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksAzkarAfterPrayer,
      child: AzkarGenerator(
        azkarList: _azkarAfterPrayer,
      ),
    );
  }
}
