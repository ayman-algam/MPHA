import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class ManasicAlOmrah extends StatefulWidget {
  @override
  _ManasicAlOmrahState createState() => _ManasicAlOmrahState();
}

class _ManasicAlOmrahState extends State<ManasicAlOmrah> {
  @override
  Widget build(BuildContext context) {
    return OSliverAppBar(
      lable: ksManasicAlOmrah,
      backgroundImagePath: "src/images/manasic_appbar.png",
      child: Center(
        child: Text(
          ksManasicAlOmrah,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}