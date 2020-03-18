import 'package:flutter/material.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/usageAssets.dart';

class AdabAlZiarah extends StatefulWidget {
  @override
  _AdabAlZiarahState createState() => _AdabAlZiarahState();
}

class _AdabAlZiarahState extends State<AdabAlZiarah> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjEfrad,
      child: Center(
        child: Text(
          ksHajjEfrad,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}