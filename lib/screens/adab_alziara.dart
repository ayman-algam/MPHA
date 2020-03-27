import 'package:flutter/material.dart';
import 'package:mpha/assets.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

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