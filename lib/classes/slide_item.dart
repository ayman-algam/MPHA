import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

import '../colors.dart';

class SlideArea extends StatefulWidget {
  final List sl;

  SlideArea(this.sl);

  @override
  _SlideAreaState createState() => _SlideAreaState();
}

class _SlideAreaState extends State<SlideArea> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < widget.sl.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

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
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: widget.sl.length,
            onPageChanged: _onPageChange,
            itemBuilder: (ctx, index) {
              return OCardView(
                child: Container(
                  decoration: BoxDecoration(
                      color: kcPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(widget.sl[index].imageUrl),
                    ),
                  ),
                ),
              );
            }),
        Container(
          margin: const EdgeInsets.only(bottom: 25.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              for (int i = 0; i < widget.sl.length; i++)
                if (i == _currentPage) SlideDot(true) else SlideDot(false)
            ],
          ),
        )
      ],
    );
  }
}

class SlideDot extends StatelessWidget {
  bool isActive;

  SlideDot(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: isActive ? 15 : 8,
      width: isActive ? 15 : 8,
      decoration: BoxDecoration(
        color: isActive ? kcTextSplash : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
