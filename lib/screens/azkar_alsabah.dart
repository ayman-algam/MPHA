import 'package:flutter/material.dart';
import 'package:mpha/models/ziker_content.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/widgets/ziker_generator.dart';

import '../strings.dart';

class AzkarAlSabah extends StatelessWidget {

  static const routeName = 'azkarAlsabah';

  final List<ZikerContent> _azkarAlsabah = [
    ZikerContent(
      id: 1,
      numberOfRepetition: 1,
      zt: ast1,
      zc: asc1,
      zf: asf1,
    ),
    ZikerContent(
      id: 2,
      numberOfRepetition: 3,
      zt: ast2,
      zc: asc2,
      zf: asf2,
    ),
    ZikerContent(
      id: 3,
      numberOfRepetition: 3,
      zt: ast3,
      zc: asc3,
      zf: asf3,
    ),
    ZikerContent(
      id: 4,
      numberOfRepetition: 3,
      zt: ast4,
      zc: asc4,
      zf: asf4,
    ),
    ZikerContent(
      id: 5,
      numberOfRepetition: 1,
      zt: ast5,
      zc: asc5,
      zf: asf5,
    ),
    ZikerContent(
      id: 6,
      numberOfRepetition: 1,
      zt: ast6,
      zc: asc6,
      zf: asf6,
    ),
    ZikerContent(
      id: 7,
      numberOfRepetition: 3,
      zt: ast7,
      zc: asc7,
      zf: asf7,
    ),
    ZikerContent(
      id: 8,
      numberOfRepetition: 4,
      zt: ast8,
      zc: asc8,
      zf: asf8,
    ),
    ZikerContent(
      id: 9,
      numberOfRepetition: 1,
      zt: ast9,
      zc: asc9,
      zf: asf9,
    ),
    ZikerContent(
      id: 10,
      numberOfRepetition: 7,
      zt: ast10,
      zc: asc10,
      zf: asf10,
    ),
    ZikerContent(
      id: 11,
      numberOfRepetition: 3,
      zt: ast11,
      zc: asc11,
      zf: asf11,
    ),
    ZikerContent(
      id: 12,
      numberOfRepetition: 1,
      zt: ast12,
      zc: asc12,
      zf: asf12,
    ),
    ZikerContent(
      id: 13,
      numberOfRepetition: 1,
      zt: ast13,
      zc: asc13,
      zf: asf13,
    ),
    ZikerContent(
      id: 14,
      numberOfRepetition: 3,
      zt: ast14,
      zc: asc14,
      zf: asf14,
    ),
    ZikerContent(
      id: 15,
      numberOfRepetition: 3,
      zt: ast15,
      zc: asc15,
      zf: asf15,
    ),
    ZikerContent(
      id: 16,
      numberOfRepetition: 3,
      zt: ast16,
      zc: asc16,
      zf: asf16,
    ),
    ZikerContent(
      id: 17,
      numberOfRepetition: 1,
      zt: ast17,
      zc: asc17,
      zf: asf17,
    ),
    ZikerContent(
      id: 18,
      numberOfRepetition: 3,
      zt: ast18,
      zc: asc18,
      zf: asf18,
    ),
    ZikerContent(
      id: 19,
      numberOfRepetition: 1,
      zt: ast19,
      zc: asc19,
      zf: asf19,
    ),
    ZikerContent(
      id: 20,
      numberOfRepetition: 1,
      zt: ast20,
      zc: asc20,
      zf: asf20,
    ),
    ZikerContent(
      id: 21,
      numberOfRepetition: 3,
      zt: ast21,
      zc: asc21,
      zf: asf21,
    ),
    ZikerContent(
      id: 22,
      numberOfRepetition: 10,
      zt: ast22,
      zc: asc22,
      zf: asf22,
    ),
    ZikerContent(
      id: 23,
      numberOfRepetition: 3,
      zt: ast23,
      zc: asc23,
      zf: asf23,
    ),
    ZikerContent(
      id: 24,
      numberOfRepetition: 3,
      zt: ast24,
      zc: asc24,
      zf: asf24,
    ),
    ZikerContent(
      id: 25,
      numberOfRepetition: 3,
      zt: ast25,
      zc: asc25,
      zf: asf25,
    ),
    ZikerContent(
      id: 26,
      numberOfRepetition: 3,
      zt: ast26,
      zc: asc26,
      zf: asf26,
    ),
    ZikerContent(
      id: 27,
      numberOfRepetition: 1,
      zt: ast27,
      zc: asc27,
      zf: asf27,
    ),
    ZikerContent(
      id: 28,
      numberOfRepetition: 1,
      zt: ast28,
      zc: asc28,
      zf: asf28,
    ),
    ZikerContent(
      id: 29,
      numberOfRepetition: 100,
      zt: ast29,
      zc: asc29,
      zf: asf29,
    ),
    ZikerContent(
      id: 30,
      numberOfRepetition: 100,
      zt: ast30,
      zc: asc30,
      zf: asf30,
    ),
    ZikerContent(
      id: 31,
      numberOfRepetition: 100,
      zt: ast31,
      zc: asc31,
      zf: asf31,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksAzkarAlSabah,
      child: AzkarGenerator(
        azkarList: _azkarAlsabah,
      ),
    );
  }
}
