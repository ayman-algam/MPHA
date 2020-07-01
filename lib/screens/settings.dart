import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mpha/models/pilgrim.dart';
import 'package:mpha/provider/pilgrim_provider.dart';
import 'package:mpha/screens/account_settings.dart';
import 'package:mpha/screens/home_page.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';

import '../theme.dart';
import 'account_setting_hajj.dart';

class Settings extends StatelessWidget {
  static const routeName = 'settings';

  final GlobalKey<ScaffoldState> _scaffoldKey2 = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final pilgrimProvider =
    Provider.of<PilgrimProvider>(context, listen: false);
    return Scaffold(
      key: _scaffoldKey2,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: kColor2, size: 38.0),
          onPressed: () => _scaffoldKey2.currentState.openDrawer(),
        ),
        textTheme: TextTheme(title: kTextStyleAppBarTitle),
        elevation: 20.0,
        centerTitle: true,
        title: Text(ksSetting),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.edit,
              color: kColor2,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, AccountSettings.routeName);
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
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
                              pilgrimProvider.currentUser.firstName == null
                                  ? 'قُم بإعدادات الحساب'
                                  : '${pilgrimProvider.currentUser
                                  .firstName} ${pilgrimProvider.currentUser
                                  .lastName}',
                              style: kTextStyleButtonTitle.copyWith(
                                  color: kColor1),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),

                  // gender
                  ListTile(
                    leading: Icon(
                      pilgrimProvider.isNewUser
                          ? FontAwesomeIcons.genderless
                          : pilgrimProvider.currentUser.gender == Gender.male
                          ? FontAwesomeIcons.mars
                          : FontAwesomeIcons.venus,
                      color: Colors.black,
                      size: 38.0,
                    ),
                    title: Text(
                      ksGender,
                      style: kTextStyleButtonTitle.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(pilgrimProvider.gender),
                    trailing: TrailingIconButton(
                        routeName: AccountSettings.routeName),
                  ),
                  CustomDivider(),

                  // mansac type
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.pray,
                      color: Colors.black,
                      size: 38.0,
                    ),
                    title: Text(
                      ksMansacType,
                      style: kTextStyleButtonTitle.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(pilgrimProvider.mansacType),
                    trailing: TrailingIconButton(
                        routeName: AccountSettings.routeName),
                  ),
                  CustomDivider(),

                  // hajj type
                  if (pilgrimProvider.currentUser.mansacType == MansacType.hajj)
                    Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.spa,
                            color: Colors.black,
                            size: 38.0,
                          ),
                          title: Text(
                            ksHajjType,
                            style: kTextStyleButtonTitle.copyWith(
                                color: Colors.black),
                          ),
                          subtitle: Text(pilgrimProvider.hajjType),
                          trailing: TrailingIconButton(
                              routeName: AccountSettingsHajj.routeName),
                        ),
                        CustomDivider(),
                        // time to arrive to maca
                        ListTile(
                          leading: Icon(
                            Icons.timer,
                            color: Colors.black,
                            size: 38.0,
                          ),
                          title: Text(
                            ksTimeToArriveMaka,
                            style: kTextStyleButtonTitle.copyWith(
                                color: Colors.black),
                          ),
                          subtitle: Text(pilgrimProvider.timeOfArrive),
                          trailing: TrailingIconButton(
                              routeName: AccountSettingsHajj.routeName),
                        ),
                        CustomDivider(),
                      ],
                    ),
                  // the language
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.black,
                      size: 38.0,
                    ),
                    title: Text(
                      'اللغة',
                      style:
                      kTextStyleButtonTitle.copyWith(color: Colors.black),
                    ),
                    subtitle: Text('العربية'),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              child: RaisedButton(
                child: Text(
                  ksSettingsSave,
                  style: kTextStyleButtonTitle.copyWith(color: kColor2),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.routeName);
                },
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: kColor1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrailingIconButton extends StatelessWidget {
  final String routeName;

  TrailingIconButton({@required this.routeName});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        FontAwesomeIcons.userEdit,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
