import 'package:flutter/material.dart';
import 'package:mpha/screens/account_settings.dart';
import 'package:mpha/screens/manasic_alhajj.dart';
import 'package:mpha/screens/settings.dart';

import 'screens/adab_alziara.dart';
import 'screens/azkar_after_prayer.dart';
import 'screens/azkar_almasa.dart';
import 'screens/azkar_alsabah.dart';
import 'screens/azkar_mostahaba.dart';
import 'screens/ht_Ifraad.dart';
import 'screens/ht_Qiraan.dart';
import 'screens/m_Ihram.dart';
import 'screens/ht_Tamattu.dart';
import 'screens/m_arafa.dart';
import 'screens/m_cut_and_shaving.dart';
import 'screens/m_drink_from_zamzam.dart';
import 'screens/m_ifada_to_mozdalifa.dart';
import 'screens/m_magam_ibrahim.dart';
import 'screens/m_rami_algamarat.dart';
import 'screens/m_rami_gamrat_alagaba.dart';
import 'screens/m_saee.dart';
import 'screens/m_sleep_in_mena.dart';
import 'screens/m_tawaf.dart';
import 'screens/m_ransom.dart';
import 'screens/m_tawaf_alefada.dart';
import 'screens/manasic_alomrah.dart';
import 'screens/pray_time.dart';
import 'screens/test_plase.dart';
import 'screens/home_page.dart';
import 'screens/splash_screen.dart';
import 'theme.dart';

void main() => runApp(MPHApp());

class MPHApp extends StatelessWidget {
  // The root widget  of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MPHA',
      theme: ThemeData(
        primaryColor: Color(0xFF272D34),
        accentColor: Color(0xFFf3eab7),
        scaffoldBackgroundColor: kColor1,
      ),
      initialRoute: AccountSettings.routeName,
      routes: {
        TestPlace.routeName: (context) => TestPlace(),
        SplashScreen.routeName: (context) => SplashScreen(),
        HomePage.routeName: (context) => HomePage(),
        ManasicAlhajj.routName: (context) => ManasicAlhajj(),
        HTIfraad.routeName: (context) => HTIfraad(),
        HTQiraan.routeName: (context) => HTQiraan(),
        HTTamattu.routeName: (context) => HTTamattu(),
        MIhram.routeName: (context) => MIhram(),
        MTawaf.routeName: (context) => MTawaf(),
        MMagamIbrahim.routeName: (context) => MMagamIbrahim(),
        MDrinkFromZamzam.routeName: (context) => MDrinkFromZamzam(),
        MSaee.routeName: (context) => MSaee(),
        MSleepInMena.routeName: (context) => MSleepInMena(),
        MArafa.routeName: (context) => MArafa(),
        MIfadaToMozdalifa.routeName: (context) => MIfadaToMozdalifa(),
        MRamiGamratAlagaba.routeName: (context) => MRamiGamratAlagaba(),
        MRansom.routeName: (context) => MRansom(),
        MCutAndShaving.routeName: (context) => MCutAndShaving(),
        MTawafAlEfada.routeName: (context) => MTawafAlEfada(),
        MRamiAlgamarat.routeName: (context) => MRamiAlgamarat(),
        ManasicAlOmrah.routeName: (context) => ManasicAlOmrah(),
        AdabAlZiarah.routeName: (context) => AdabAlZiarah(),
        AzkarMostahaba.routeName: (context) => AzkarMostahaba(),
        AzkarAlSabah.routeName: (context) => AzkarAlSabah(),
        AzkarAlmasa.routeName: (context) => AzkarAlmasa(),
        AzkarAfterPrayer.routeName: (context) => AzkarAfterPrayer(),
        PrayTime.routeName: (context) => PrayTime(),
        Settings.routeName: (context) => Settings(),
        AccountSettings.routeName: (context) => AccountSettings(),
      },
    );
  }
}
