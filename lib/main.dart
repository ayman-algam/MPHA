import 'package:flutter/material.dart';
import 'package:mpha/screens/adab_alziara.dart';
import 'package:mpha/screens/azkar_almasa.dart';
import 'package:mpha/screens/azkar_alsabah.dart';
import 'package:mpha/screens/azkar_mostahaba.dart';
import 'package:mpha/screens/ht_Ifraad.dart';
import 'package:mpha/screens/ht_Qiraan.dart';
import 'package:mpha/screens/ht_Tamattu.dart';
import 'package:mpha/screens/m_Ihram.dart';
import 'package:mpha/screens/m_saee.dart';
import 'package:mpha/screens/manasic_alomrah.dart';
import 'package:mpha/screens/pray_time.dart';
import 'package:mpha/screens/test_plase.dart';

import 'colors.dart';
import 'screens/home_page.dart';
import 'screens/manasic_alhajj.dart';
import 'screens/splash_screen.dart';

void main() => runApp(MPHApp());

class MPHApp extends StatelessWidget {
  // The root widget  of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kcPrimaryColor,
        scaffoldBackgroundColor: kcPrimaryColor,
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),

      initialRoute: 'splashScreen',

      routes: {
        'testPlace': (context) => TestPlace(),
        'splashScreen' : (context) => SplashScreen(),
        'homePage' : (context) => HomePage(),
        'manasic_alhajj' : (context) => ManasicAlhajj(),
        'ht_ifraad': (context) => HTIfraad(),
        'ht_qiraan': (context) => HTQiraan(),
        'ht_tamattu': (context) => HTTamattu(),
        'm_ihram': (context) => MIhram(),
        'm_saee': (context) => MSaee(),
        'manasic_alomrah' : (context) => ManasicAlOmrah(),
        'adab_alziarah' : (context) => AdabAlZiarah(),
        'azkar_mostahaba' : (context) => AzkarMostahaba(),
        'azkar_alsabah': (context) => AzkarAlSabah(),
        'azkar_almasa': (context) => AzkarAlmasa(),
        'pray_time' : (context) => PrayTime(),
      },
    );
  }
}