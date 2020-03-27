import 'dart:async';

import 'package:flutter/material.dart';

import '../assets.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), ()=> Navigator.pushNamed(context, 'homePage'),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcPrimaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/main_icon.png"),
                  ),
                  sizedBoxHeight(10),
                  Text(
                    'MPHA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: 'Pacifico',
                      color: Color(0xFFf3eab7),
                    ),
                  ),
                  sizedBoxHeight(10),
                  Text(
                    'FMS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'SourceSansPro',
                      color: kcTextSplash,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '2020',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontFamily: 'Pacifico',
                  color: kcTextSplash,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}