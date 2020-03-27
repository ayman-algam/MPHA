import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/strings.dart';

class TestPlace extends StatefulWidget {
  @override
  _TestPlaceState createState() => _TestPlaceState();
}

class _TestPlaceState extends State<TestPlace> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjEfrad,
      child: Container(
        color: Colors.teal,
      ),
    );
  }
}