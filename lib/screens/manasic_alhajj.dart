import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class ManasicAlhajj extends StatefulWidget {
  @override
  _ManasicAlhajjState createState() => _ManasicAlhajjState();
}

class _ManasicAlhajjState extends State<ManasicAlhajj> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksManasicAlhajj,
      oAppBarChild:  Center(
        child: Text(
          ksManasicAlhajj,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
