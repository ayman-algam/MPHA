import 'package:flutter/material.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/usageAssets.dart';
import 'package:mpha/strings.dart';

class TestPlace extends StatefulWidget {
  @override
  _TestPlaceState createState() => _TestPlaceState();
}

class _TestPlaceState extends State<TestPlace>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  bool mReverse = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = new AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: 200,
        ));
    animation = Tween<double>(begin: 0, end: 1).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: 'Test Place',
      child: Center(
        child: GestureDetector(
          onTap: () {
            if (mReverse == false) {
              animationController.forward();
            } else {
              animationController.reverse();
            }

            mReverse = !mReverse;
          },
          child: AnimatedIcon(
            size: 100,
            progress: animation,
            icon: AnimatedIcons.close_menu,
          ),
        ),
      ),
    );
  }
}
