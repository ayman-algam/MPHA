import 'package:flutter/material.dart';
import 'package:mpha/assets.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

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
