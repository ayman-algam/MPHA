import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/screens/home_page.dart';
import 'package:mpha/screens/settings.dart';

import '../strings.dart';

class MenuItem {
  final String title;
  final IconData iconData;
  final String routeName;

  MenuItem({@required this.title,
    @required this.iconData,
    @required this.routeName});
}

List<MenuItem> listOfMenuItems = [
  MenuItem(
    title: ksHomePage,
    iconData: Icons.home,
    routeName: HomePage.routeName,
  ),
  MenuItem(
    title: ksPrayTime,
    iconData: Icons.timer,
    routeName: HomePage.routeName,
  ),
  MenuItem(
    title: ksMaps,
    iconData: Icons.my_location,
    routeName: HomePage.routeName,
  ),
  MenuItem(
    title: ksAboutApp,
    iconData: Icons.live_help,
    routeName: HomePage.routeName,
  ),
  MenuItem(
    title: ksShareApp,
    iconData: Icons.share,
    routeName: HomePage.routeName,
  ),
  MenuItem(
    title: ksSetting,
    iconData: Icons.settings,
    routeName: Settings.routeName,
  ),
];
