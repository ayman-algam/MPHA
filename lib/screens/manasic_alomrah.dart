import 'package:flutter/material.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/usageAssets.dart';
import 'package:mpha/strings.dart';

class ManasicAlOmrah extends StatefulWidget {
  @override
  _ManasicAlOmrahState createState() => _ManasicAlOmrahState();
}

class _ManasicAlOmrahState extends State<ManasicAlOmrah> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksManasicAlOmrah,
      child: Center(
        child: Text(
          ksManasicAlOmrah,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}