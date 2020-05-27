import 'package:flutter/material.dart';
import 'package:mpha/screens/ht_c_at_day_10.dart';
import 'package:mpha/screens/ht_c_at_day_8.dart';
import 'package:mpha/screens/ht_c_at_day_9.dart';
import 'package:mpha/screens/ht_c_ayam_altashreeg.dart';
import 'package:mpha/screens/ht_c_befor_day_8.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/widgets/slide_dots.dart';

class HTIfraad extends StatefulWidget {
  static const routeName = 'hTIfraad';

  @override
  _HTIfraadState createState() => _HTIfraadState();
}

class _HTIfraadState extends State<HTIfraad> {
  int _currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _days = [
    HTCBefore8(),
    HTCAtDay8(),
    HTCAtDay9(),
    HTCAtDay10(),
    HTCAyamAltashreeg(),
  ];

  void _onPageChange(int index) {
    print('----------------------------- $index');

  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksHajjEfrad,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              reverse: true,
              itemCount: _days.length,
              onPageChanged: _onPageChange,
              itemBuilder: (ctx, index) => _days[index],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  for (int i = _days.length; i >= 0; i--)
                    i == _currentPage ? SlideDot(true) : SlideDot(false),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
