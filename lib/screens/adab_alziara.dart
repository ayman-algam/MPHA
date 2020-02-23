import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class AdabAlZiarah extends StatefulWidget {
  @override
  _AdabAlZiarahState createState() => _AdabAlZiarahState();
}

class _AdabAlZiarahState extends State<AdabAlZiarah> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksAdabAlZiarah,
      oAppBarChild: Center(
        child: Text(
          ksAdabAlZiarah,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
