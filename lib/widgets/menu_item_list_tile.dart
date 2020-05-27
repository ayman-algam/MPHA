import 'package:flutter/material.dart';

import '../theme.dart';

class MenuItemListTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTap;

  const MenuItemListTile(
      {@required this.title, @required this.iconData, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              size: 38,
              color: Colors.white70,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              title,
              style: kTextStyleButtonTitle,
            ),
          ],
        ),
      ),
    );
  }
}
