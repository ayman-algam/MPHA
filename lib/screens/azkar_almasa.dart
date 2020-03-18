import 'package:flutter/material.dart';
import 'package:mpha/classes/azkar.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';

class AzkarAlmasaContent {
  final int id;
  final int iteration;
  final String azt;
  final String azc;
  final String azf;

  AzkarAlmasaContent({this.id, this.iteration, this.azt, this.azc, this.azf});
}

List azkarAlmasaContent = [
  AzkarAlmasaContent(
    id: 1,
    iteration: 1,
    azt: amt1,
    azc: amc1,
    azf: amf1,
  ),
  AzkarAlmasaContent(
    id: 2,
    iteration: 1,
    azt: amt2,
    azc: amc2,
    azf: amf2,
  ),
  AzkarAlmasaContent(
    id: 3,
    iteration: 3,
    azt: amt3,
    azc: amc3,
    azf: amf3,
  ),
  AzkarAlmasaContent(
    id: 4,
    iteration: 3,
    azt: amt4,
    azc: amc4,
    azf: amf4,
  ),
  AzkarAlmasaContent(
    id: 5,
    iteration: 3,
    azt: amt5,
    azc: amc5,
    azf: amf5,
  ),
  AzkarAlmasaContent(
    id: 6,
    iteration: 1,
    azt: amt6,
    azc: amc6,
    azf: amf6,
  ),
  AzkarAlmasaContent(
    id: 7,
    iteration: 1,
    azt: amt7,
    azc: amc7,
    azf: amf7,
  ),
  AzkarAlmasaContent(
    id: 8,
    iteration: 3,
    azt: amt8,
    azc: amc8,
    azf: amf8,
  ),
  AzkarAlmasaContent(
    id: 9,
    iteration: 4,
    azt: amt9,
    azc: amc9,
    azf: amf9,
  ),
  AzkarAlmasaContent(
    id: 10,
    iteration: 1,
    azt: amt10,
    azc: amc10,
    azf: amf10,
  ),
  AzkarAlmasaContent(
    id: 11,
    iteration: 7,
    azt: amt11,
    azc: amc11,
    azf: amf11,
  ),
  AzkarAlmasaContent(
    id: 12,
    iteration: 3,
    azt: amt12,
    azc: amc12,
    azf: amf12,
  ),
  AzkarAlmasaContent(
    id: 13,
    iteration: 1,
    azt: amt13,
    azc: amc13,
    azf: amf13,
  ),
  AzkarAlmasaContent(
    id: 14,
    iteration: 1,
    azt: amt14,
    azc: amc14,
    azf: amf14,
  ),
  AzkarAlmasaContent(
    id: 15,
    iteration: 3,
    azt: amt15,
    azc: amc15,
    azf: amf15,
  ),
  AzkarAlmasaContent(
    id: 16,
    iteration: 3,
    azt: amt16,
    azc: amc16,
    azf: amf16,
  ),
  AzkarAlmasaContent(
    id: 17,
    iteration: 3,
    azt: amt17,
    azc: amc17,
    azf: amf17,
  ),
  AzkarAlmasaContent(
    id: 18,
    iteration: 1,
    azt: amt18,
    azc: amc18,
    azf: amf18,
  ),
  AzkarAlmasaContent(
    id: 19,
    iteration: 3,
    azt: amt19,
    azc: amc19,
    azf: amf19,
  ),
  AzkarAlmasaContent(
    id: 20,
    iteration: 1,
    azt: amt20,
    azc: amc20,
    azf: amf20,
  ),
  AzkarAlmasaContent(
    id: 21,
    iteration: 1,
    azt: amt21,
    azc: amc21,
    azf: amf21,
  ),
  AzkarAlmasaContent(
    id: 22,
    iteration: 3,
    azt: amt22,
    azc: amc22,
    azf: amf22,
  ),
  AzkarAlmasaContent(
    id: 23,
    iteration: 10,
    azt: amt23,
    azc: amc23,
    azf: amf23,
  ),
  AzkarAlmasaContent(
    id: 24,
    iteration: 3,
    azt: amt24,
    azc: amc24,
    azf: amf24,
  ),
  AzkarAlmasaContent(
    id: 25,
    iteration: 3,
    azt: amt25,
    azc: amc25,
    azf: amf25,
  ),
  AzkarAlmasaContent(
    id: 26,
    iteration: 3,
    azt: amt26,
    azc: amc26,
    azf: amf26,
  ),
  AzkarAlmasaContent(
    id: 27,
    iteration: 3,
    azt: amt27,
    azc: amc27,
    azf: amf27,
  ),
  AzkarAlmasaContent(
    id: 28,
    iteration: 1,
    azt: amt28,
    azc: amc28,
    azf: amf28,
  ),
  AzkarAlmasaContent(
    id: 29,
    iteration: 100,
    azt: amt29,
    azc: amc29,
    azf: amf29,
  ),
  AzkarAlmasaContent(
    id: 30,
    iteration: 100,
    azt: amt30,
    azc: amc30,
    azf: amf30,
  ),
  AzkarAlmasaContent(
    id: 31,
    iteration: 100,
    azt: amt31,
    azc: amc31,
    azf: amf31,
  ),
  AzkarAlmasaContent(
    id: 32,
    iteration: 100,
    azt: amt32,
    azc: amc32,
    azf: amf32,
  ),
];

class AzkarAlmasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksAzkarAlMasa,
      child: GetAzkar(
        gotAzkar: azkarAlmasaContent,
        numberOfAzkar: azkarAlmasaContent.length,
      ),
    );
  }
}
