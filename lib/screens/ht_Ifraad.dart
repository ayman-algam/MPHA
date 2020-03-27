import 'package:flutter/material.dart';
import 'package:mpha/classes/widgets/menu_page.dart';
import 'package:mpha/screens/ht_c_at_day_10.dart';
import 'package:mpha/screens/ht_c_at_day_8.dart';
import 'package:mpha/screens/ht_c_at_day_9.dart';
import 'package:mpha/screens/ht_c_ayam_altashreeg.dart';
import 'package:mpha/screens/ht_c_befor_day_8.dart';

import 'package:mpha/strings.dart';

import '../assets.dart';


class HTIfraad extends StatefulWidget {
  @override
  _HTIfraadState createState() => _HTIfraadState();
}

class _HTIfraadState extends State<HTIfraad> {

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjEfrad,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChange,
              reverse: true,
              children: <Widget>[
                HTCBefore8(),
                HTCAtDay8(),
                HTCAtDay9(),
                HTCAtDay10(),
                HTCAyamAltashreeg(),
              ],
            ),
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  for (int i = 4; i >= 0; i--)
                    if (i == _currentPage) SlideDot(true) else
                      SlideDot(false)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
