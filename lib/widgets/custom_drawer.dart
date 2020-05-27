import 'package:flutter/material.dart';
import 'package:mpha/models/menu_items.dart';

import '../theme.dart';
import 'menu_item_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor2,
      width: 275.0,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                color: kColor1,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 35.0,
                    ),
                    CircleAvatar(
                      radius: 80.0,
                      backgroundColor: kColor1,
                      child: Image(
                        image: AssetImage('assets/images/icon.png'),
                      ),
                    ),
                    Text(
                      'MPHA',
                      style: kTextStyleMPHA,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Divider(
                        color: kColor2,
                        thickness: 3,
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Divider(
                            color: Colors.grey,
                            height: 15,
                          ),
                        ),
                        itemCount: listOfMenuItems.length,
                        itemBuilder: (context, index) => MenuItemListTile(
                          title: listOfMenuItems[index].title,
                          iconData: listOfMenuItems[index].iconData,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, listOfMenuItems[index].routeName);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.exit_to_app,
                  size: 38,
                  color: kColor1,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Exit App',
                  style: kTextStyleButtonTitle.copyWith(color: kColor1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
