import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

import '../assets.dart';

class HTQiraan extends StatefulWidget {
  @override
  _HTQiraanState createState() => _HTQiraanState();
}

class _HTQiraanState extends State<HTQiraan> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjAlQiran,
      child: Center(
        child: Text(
          ksHajjAlQiran,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
