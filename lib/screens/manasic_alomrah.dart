import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class ManasicAlOmrah extends StatefulWidget {
  @override
  _ManasicAlOmrahState createState() => _ManasicAlOmrahState();
}

class _ManasicAlOmrahState extends State<ManasicAlOmrah> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksManasicAlOmrah,
      oAppBarChild: Center(
        child: Text(
          ksManasicAlOmrah,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}