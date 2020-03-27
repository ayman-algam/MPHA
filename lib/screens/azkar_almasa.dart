import 'package:flutter/material.dart';
import 'package:mpha/classes/models/ziker_content.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/classes/widgets/ziker_generator.dart';

import '../strings.dart';

class AzkarAlmasa extends StatelessWidget {

  final List<ZikerContent> _azkarAlmasa = [

    ZikerContent(
      id: 1,
      numberOfRepetition: 1,
      zt: amt1,
      zc: amc1,
      zf: amf1,
    ),
    ZikerContent(
      id: 2,
      numberOfRepetition: 1,
      zt: amt2,
      zc: amc2,
      zf: amf2,
    ),
    ZikerContent(
      id: 3,
      numberOfRepetition: 3,
      zt: amt3,
      zc: amc3,
      zf: amf3,
    ),
    ZikerContent(
      id: 4,
      numberOfRepetition: 3,
      zt: amt4,
      zc: amc4,
      zf: amf4,
    ),
    ZikerContent(
      id: 5,
      numberOfRepetition: 3,
      zt: amt5,
      zc: amc5,
      zf: amf5,
    ),
    ZikerContent(
      id: 6,
      numberOfRepetition: 1,
      zt: amt6,
      zc: amc6,
      zf: amf6,
    ),
    ZikerContent(
      id: 7,
      numberOfRepetition: 1,
      zt: amt7,
      zc: amc7,
      zf: amf7,
    ),
    ZikerContent(
      id: 8,
      numberOfRepetition: 3,
      zt: amt8,
      zc: amc8,
      zf: amf8,
    ),
    ZikerContent(
      id: 9,
      numberOfRepetition: 4,
      zt: amt9,
      zc: amc9,
      zf: amf9,
    ),
    ZikerContent(
      id: 10,
      numberOfRepetition: 1,
      zt: amt10,
      zc: amc10,
      zf: amf10,
    ),
    ZikerContent(
      id: 11,
      numberOfRepetition: 7,
      zt: amt11,
      zc: amc11,
      zf: amf11,
    ),
    ZikerContent(
      id: 12,
      numberOfRepetition: 3,
      zt: amt12,
      zc: amc12,
      zf: amf12,
    ),
    ZikerContent(
      id: 13,
      numberOfRepetition: 1,
      zt: amt13,
      zc: amc13,
      zf: amf13,
    ),
    ZikerContent(
      id: 14,
      numberOfRepetition: 1,
      zt: amt14,
      zc: amc14,
      zf: amf14,
    ),
    ZikerContent(
      id: 15,
      numberOfRepetition: 3,
      zt: amt15,
      zc: amc15,
      zf: amf15,
    ),
    ZikerContent(
      id: 16,
      numberOfRepetition: 3,
      zt: amt16,
      zc: amc16,
      zf: amf16,
    ),
    ZikerContent(
      id: 17,
      numberOfRepetition: 3,
      zt: amt17,
      zc: amc17,
      zf: amf17,
    ),
    ZikerContent(
      id: 18,
      numberOfRepetition: 1,
      zt: amt18,
      zc: amc18,
      zf: amf18,
    ),
    ZikerContent(
      id: 19,
      numberOfRepetition: 3,
      zt: amt19,
      zc: amc19,
      zf: amf19,
    ),
    ZikerContent(
      id: 20,
      numberOfRepetition: 1,
      zt: amt20,
      zc: amc20,
      zf: amf20,
    ),
    ZikerContent(
      id: 21,
      numberOfRepetition: 1,
      zt: amt21,
      zc: amc21,
      zf: amf21,
    ),
    ZikerContent(
      id: 22,
      numberOfRepetition: 3,
      zt: amt22,
      zc: amc22,
      zf: amf22,
    ),
    ZikerContent(
      id: 23,
      numberOfRepetition: 10,
      zt: amt23,
      zc: amc23,
      zf: amf23,
    ),
    ZikerContent(
      id: 24,
      numberOfRepetition: 3,
      zt: amt24,
      zc: amc24,
      zf: amf24,
    ),
    ZikerContent(
      id: 25,
      numberOfRepetition: 3,
      zt: amt25,
      zc: amc25,
      zf: amf25,
    ),
    ZikerContent(
      id: 26,
      numberOfRepetition: 3,
      zt: amt26,
      zc: amc26,
      zf: amf26,
    ),
    ZikerContent(
      id: 27,
      numberOfRepetition: 3,
      zt: amt27,
      zc: amc27,
      zf: amf27,
    ),
    ZikerContent(
      id: 28,
      numberOfRepetition: 1,
      zt: amt28,
      zc: amc28,
      zf: amf28,
    ),
    ZikerContent(
      id: 29,
      numberOfRepetition: 100,
      zt: amt29,
      zc: amc29,
      zf: amf29,
    ),
    ZikerContent(
      id: 30,
      numberOfRepetition: 100,
      zt: amt30,
      zc: amc30,
      zf: amf30,
    ),
    ZikerContent(
      id: 31,
      numberOfRepetition: 100,
      zt: amt31,
      zc: amc31,
      zf: amf31,
    ),
    ZikerContent(
      id: 32,
      numberOfRepetition: 100,
      zt: amt32,
      zc: amc32,
      zf: amf32,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksAzkarAlSabah,
      child: AzkarGenerator(
        azkarList: _azkarAlmasa,),
    );
  }
}



