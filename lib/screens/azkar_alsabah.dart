import 'package:flutter/material.dart';
import 'package:mpha/classes/azkar.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';

class AzkarAlsabahContent {
  final int id;
  final int iteration;
  final String azt;
  final String azc;
  final String azf;

  AzkarAlsabahContent({this.id, this.iteration, this.azt, this.azc, this.azf});
}

List azkarAlsabahContent = [
  AzkarAlsabahContent(
    id: 1,
    iteration: 1,
    azt: ast1,
    azc: asc1,
    azf: asf1,
  ),

  AzkarAlsabahContent(
    id: 2,
    iteration: 3,
    azt: ast2,
    azc: asc2,
    azf: asf2,
  ),

  AzkarAlsabahContent(
    id: 3,
    iteration: 3,
    azt: ast3,
    azc: asc3,
    azf: asf3,
  ),

  AzkarAlsabahContent(
    id: 4,
    iteration: 3,
    azt: ast4,
    azc: asc4,
    azf: asf4,
  ),

  AzkarAlsabahContent(
    id: 5,
    iteration: 1,
    azt: ast5,
    azc: asc5,
    azf: asf5,
  ),

  AzkarAlsabahContent(
    id: 6,
    iteration: 1,
    azt: ast6,
    azc: asc6,
    azf: asf6,
  ),

  AzkarAlsabahContent(
    id: 7,
    iteration: 3,
    azt: ast7,
    azc: asc7,
    azf: asf7,
  ),

  AzkarAlsabahContent(
    id: 8,
    iteration: 4,
    azt: ast8,
    azc: asc8,
    azf: asf8,
  ),

  AzkarAlsabahContent(
    id: 9,
    iteration: 1,
    azt: ast9,
    azc: asc9,
    azf: asf9,
  ),

  AzkarAlsabahContent(
    id: 10,
    iteration: 7,
    azt: ast10,
    azc: asc10,
    azf: asf10,
  ),

  AzkarAlsabahContent(
    id: 11,
    iteration: 3,
    azt: ast11,
    azc: asc11,
    azf: asf11,
  ),

  AzkarAlsabahContent(
    id: 12,
    iteration: 1,
    azt: ast12,
    azc: asc12,
    azf: asf12,
  ),

  AzkarAlsabahContent(
    id: 13,
    iteration: 1,
    azt: ast13,
    azc: asc13,
    azf: asf13,
  ),

  AzkarAlsabahContent(
    id: 14,
    iteration: 3,
    azt: ast14,
    azc: asc14,
    azf: asf14,
  ),

  AzkarAlsabahContent(
    id: 15,
    iteration: 3,
    azt: ast15,
    azc: asc15,
    azf: asf15,
  ),

  AzkarAlsabahContent(
    id: 16,
    iteration: 3,
    azt: ast16,
    azc: asc16,
    azf: asf16,
  ),

  AzkarAlsabahContent(
    id: 17,
    iteration: 1,
    azt: ast17,
    azc: asc17,
    azf: asf17,
  ),

  AzkarAlsabahContent(
    id: 18,
    iteration: 3,
    azt: ast18,
    azc: asc18,
    azf: asf18,
  ),

  AzkarAlsabahContent(
    id: 19,
    iteration: 1,
    azt: ast19,
    azc: asc19,
    azf: asf19,
  ),

  AzkarAlsabahContent(
    id: 20,
    iteration: 1,
    azt: ast20,
    azc: asc20,
    azf: asf20,
  ),

  AzkarAlsabahContent(
    id: 21,
    iteration: 3,
    azt: ast21,
    azc: asc21,
    azf: asf21,
  ),

  AzkarAlsabahContent(
    id: 22,
    iteration: 10,
    azt: ast22,
    azc: asc22,
    azf: asf22,
  ),

  AzkarAlsabahContent(
    id: 23,
    iteration: 3,
    azt: ast23,
    azc: asc23,
    azf: asf23,
  ),

  AzkarAlsabahContent(
    id: 24,
    iteration: 3,
    azt: ast24,
    azc: asc24,
    azf: asf24,
  ),

  AzkarAlsabahContent(
    id: 25,
    iteration: 3,
    azt: ast25,
    azc: asc25,
    azf: asf25,
  ),

  AzkarAlsabahContent(
    id: 26,
    iteration: 3,
    azt: ast26,
    azc: asc26,
    azf: asf26,
  ),

  AzkarAlsabahContent(
    id: 27,
    iteration: 1,
    azt: ast27,
    azc: asc27,
    azf: asf27,
  ),

  AzkarAlsabahContent(
    id: 28,
    iteration: 1,
    azt: ast28,
    azc: asc28,
    azf: asf28,
  ),

  AzkarAlsabahContent(
    id: 29,
    iteration: 100,
    azt: ast29,
    azc: asc29,
    azf: asf29,
  ),

  AzkarAlsabahContent(
    id: 30,
    iteration: 100,
    azt: ast30,
    azc: asc30,
    azf: asf30,
  ),

  AzkarAlsabahContent(
    id: 31,
    iteration: 100,
    azt: ast31,
    azc: asc31,
    azf: asf31,
  ),

];

class AzkarAlSabah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksAzkarAlSabah,
      child: GetAzkar(
        gotAzkar: azkarAlsabahContent,
        numberOfAzkar: azkarAlsabahContent.length,
      ),
    );
  }
}
