import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mpha/screens/home_page.dart';
import 'package:mpha/theme.dart';


class SplashScreen extends StatefulWidget {

  static const routeName = 'splashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () =>
        Navigator.pushNamed(context, HomePage.routeName),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image(
                      image: AssetImage('assets/images/icon.png'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'MPHA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: 'Pacifico',
                      color: Color(0xFFf3eab7),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'FMS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'SourceSansPro',
                      color: kColor2,
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
                  color: kColor2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}