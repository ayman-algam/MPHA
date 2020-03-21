import 'package:flutter/material.dart';
import 'package:mpha/screens/adab_alziara.dart';
import 'package:mpha/screens/azkar_almasa.dart';
import 'package:mpha/screens/azkar_alsabah.dart';
import 'package:mpha/screens/azkar_mostahaba.dart';
import 'package:mpha/screens/ht_Ifraad.dart';
import 'package:mpha/screens/ht_Qiraan.dart';
import 'package:mpha/screens/ht_Tamattu.dart';
import 'package:mpha/screens/m_Ihram.dart';
import 'package:mpha/screens/m_arafa.dart';
import 'package:mpha/screens/m_cut_and_shaving.dart';
import 'package:mpha/screens/m_drink_from_zamzam.dart';
import 'package:mpha/screens/m_ifada_to_mozdalifa.dart';
import 'package:mpha/screens/m_magam_ibrahim.dart';
import 'package:mpha/screens/m_rami_gamrat_alagaba.dart';
import 'package:mpha/screens/m_saee.dart';
import 'package:mpha/screens/m_sleep_in_mena.dart';
import 'package:mpha/screens/m_tawaf.dart';
import 'package:mpha/screens/m_ransom.dart';
import 'package:mpha/screens/m_tawaf_alefada.dart';
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
            fontSize: 20.0,
          ),
        ),
      ),

      initialRoute: 'manasic_alhajj',

      routes: {
        'testPlace': (context) => TestPlace(),

        'splashScreen' : (context) => SplashScreen(),

        'homePage' : (context) => HomePage(),

        'manasic_alhajj' : (context) => ManasicAlhajj(),

        'ht_ifraad': (context) => HTIfraad(),
        'ht_qiraan': (context) => HTQiraan(),
        'ht_tamattu': (context) => HTTamattu(),

        'm_ihram': (context) => MIhram(),
        'm_tawaf': (context) => MTawaf(),
        'm_magam_ibrahim': (context) => MMagamIbrahim(),
        'm_drink_from_zamzam': (context) => MDrinkFromZamzam(),
        'm_saee': (context) => MSaee(),

        'm_sleep_in_mena': (context) => MSleepInMena(),

        'm_arafa': (context) => MArafa(),
        'm_ifada_to_mozdalifa': (context) => MIfadaToMozdalifa(),

        'm_rami_gamrat_alagaba': (context) => MRamiGamratAlagaba(),
        'm_ransom': (context) => MRansom(),
        'm_cut_and_shaving': (context) => MCutAndShaving(),
        'm_tawaf_alefada': (context) => MTawafAlEfada(),

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