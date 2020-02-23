import 'package:flutter/material.dart';
import 'package:mpha/screens/adab_alziara.dart';
import 'package:mpha/screens/azkar_mostahaba.dart';
import 'package:mpha/screens/manasic_alomrah.dart';
import 'screens/splash_screen.dart';
import 'screens/home_page.dart';
import 'screens/manasic_alhajj.dart';
import 'usageAssets.dart';

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
        'splashScreen' : (context) => SplashScreen(),
        'homePage' : (context) => HomePage(),
        'manasic_alhajj' : (context) => ManasicAlhajj(),
        'manasic_alomrah' : (context) => ManasicAlOmrah(),
        'adab_alziarah' : (context) => AdabAlZiarah(),
        'azkar_mostahaba' : (context) => AzkarMostahaba(),
      },
    );
  }
}