import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

import '../assets.dart';

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