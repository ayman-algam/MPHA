import 'package:flutter/material.dart';
import 'package:mpha/screens/account_settings.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/main_widget.dart';

import '../theme.dart';

class Settings extends StatelessWidget {
  static const routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return MainWidget(
        title: ksSetting,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        backgroundImage: AssetImage('assets/images/icon.png'),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'أيمن الصديق الطيب',
                            style:
                            kTextStyleButtonTitle.copyWith(color: kColor1),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text('السودان'),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: kColor1,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AccountSettings.routeName);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: kColor3,
                      size: 38.0,
                    ),
                    title: Text('إعدادات الحساب',
                        style: kTextStyleButtonTitle.copyWith(
                            color: Colors.black)),
                    subtitle: Text('$ksMale, $ksHajjEfrad, $ksArafaDay'),
                  ),
                ),
                CustomDivider(),
                FlatButton(
                  onPressed: () {},
                  child: ListTile(
                    leading: Icon(
                      Icons.language,
                      color: kColor3,
                      size: 38.0,
                    ),
                    title: Text('اللغة', style: kTextStyleButtonTitle.copyWith(
                        color: Colors.black),),
                    subtitle: Text('العربية'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
