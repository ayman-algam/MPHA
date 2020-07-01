import 'package:flutter/material.dart';

import '../theme.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: kColor2,
                thickness: 1.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 20.0, top: 8.0, bottom: 8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'ArbFONTS',
                  color: kColor2,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
