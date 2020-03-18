import 'package:flutter/material.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/usageAssets.dart';

class HTTamattu extends StatefulWidget {
  @override
  _HTTamattuState createState() => _HTTamattuState();
}

class _HTTamattuState extends State<HTTamattu> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjAltamattu,
      child: Center(
        child: Text(
          ksHajjAltamattu,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
