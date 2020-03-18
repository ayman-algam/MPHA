import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/usageAssets.dart';

import '../strings.dart';

class MSaee extends StatefulWidget {
  @override
  _MSaeeState createState() => _MSaeeState();
}

class _MSaeeState extends State<MSaee> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
        title: ksSaee,
        child: OCardView(
          child: Center(
            child: Text(
              ksSaee,
            ),
          ),
        ));
  }
}
