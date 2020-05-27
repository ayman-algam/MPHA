import 'package:flutter/material.dart';

import '../theme.dart';
import 'custom_drawer.dart';

class MainWidget extends StatelessWidget {
  final String title;
  final Widget child;

  MainWidget({Key key, this.title, this.child}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, color: kColor2, size: 38.0),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        textTheme: TextTheme(title: kTextStyleAppBarTitle),
        elevation: 20.0,
        centerTitle: true,
        title: Text(title),
      ),
      drawer: CustomDrawer(),
      body: child,
    );
  }
}
