import 'package:flutter/material.dart';
import 'package:mpha/models/pilgrim.dart';
import 'package:mpha/provider/pilgrim_provider.dart';
import 'package:mpha/screens/home_page.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/widgets/Title.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:provider/provider.dart';

import '../theme.dart';

class AccountSettingsHajj extends StatefulWidget {
  static const routeName = 'accountSettingHajj';

  @override
  _AccountSettingsHajjState createState() => _AccountSettingsHajjState();
}

class _AccountSettingsHajjState extends State<AccountSettingsHajj> {
  TimeOfArrive _timeOfArrive;
  HajjType _hajjType;

  bool isInit = true;

  @override
  void didChangeDependencies() {
    if (isInit) {
      final pilgrimProvider = Provider.of<PilgrimProvider>(context);
      _timeOfArrive = pilgrimProvider.currentUser.timeOfArrive;
      _hajjType = pilgrimProvider.currentUser.hajjType;
    }

    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final pilgrimProviderObject = Provider.of<PilgrimProvider>(context);
    return MainWidget(
      title: ksAccountSettings,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                // hajj types
                //--------------------------------------
                CustomTitle(title: ksHajjTypes),
                GestureDetector(
                  onTap: () {
                    _hajjType = HajjType.ifraad;
                    pilgrimProviderObject.setHajjType(_hajjType);
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: kColor1,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          new BoxShadow(
                              color: _hajjType == HajjType.ifraad
                                  ? kColor2
                                  : kColor1,
                              blurRadius: 10)
                        ],
                        border: Border.all(
                            color: _hajjType == HajjType.ifraad
                                ? kColor2
                                : Colors.black,
                            width: _hajjType == HajjType.ifraad ? 3 : 1),
                      ),
                      child: Text(
                        ksHajjEfrad,
                        style: kTextStyleButtonTitle.copyWith(color: kColor2),
                        textAlign: TextAlign.center,
                      )),
                ),
                // qiraan
                GestureDetector(
                  onTap: () {
                    _hajjType = HajjType.qiraan;
                    pilgrimProviderObject.setHajjType(_hajjType);
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: kColor1,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          new BoxShadow(
                              color: _hajjType == HajjType.qiraan
                                  ? kColor2
                                  : kColor1,
                              blurRadius: 10)
                        ],
                        border: Border.all(
                            color: _hajjType == HajjType.qiraan
                                ? kColor2
                                : Colors.black,
                            width: _hajjType == HajjType.qiraan ? 3 : 1),
                      ),
                      child: Text(
                        ksHajjAlQiran,
                        style: kTextStyleButtonTitle.copyWith(color: kColor2),
                        textAlign: TextAlign.center,
                      )),
                ),
                // tamattu
                GestureDetector(
                  onTap: () {
                    _hajjType = HajjType.tamattu;
                    pilgrimProviderObject.setHajjType(_hajjType);
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: kColor1,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          new BoxShadow(
                              color: _hajjType == HajjType.tamattu
                                  ? kColor2
                                  : kColor1,
                              blurRadius: 10)
                        ],
                        border: Border.all(
                            color: _hajjType == HajjType.tamattu
                                ? kColor2
                                : Colors.black,
                            width: _hajjType == HajjType.tamattu ? 3 : 1),
                      ),
                      child: Text(
                        ksHajjAltamattu,
                        style: kTextStyleButtonTitle.copyWith(color: kColor2),
                        textAlign: TextAlign.center,
                      )),
                ),

                // time of arrive to maca
                //--------------------------------------

                CustomTitle(title: ksTimeToArriveMaka),

                GestureDetector(
                  onTap: () {
                    _timeOfArrive = TimeOfArrive.before;
                    pilgrimProviderObject.setTimeOfArrive(_timeOfArrive);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: kColor1,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        new BoxShadow(
                            color: _timeOfArrive == TimeOfArrive.before
                                ? kColor2
                                : kColor1,
                            blurRadius: 10)
                      ],
                      border: Border.all(
                          color: _timeOfArrive == TimeOfArrive.before
                              ? kColor2
                              : Colors.black,
                          width: _timeOfArrive == TimeOfArrive.before ? 3 : 1),
                    ),
                    child: Text(
                      ksBefore8ZoElhejja,
                      style: kTextStyleButtonTitle.copyWith(color: kColor2),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // after
                GestureDetector(
                  onTap: () {
                    _timeOfArrive = TimeOfArrive.after;
                    pilgrimProviderObject.setTimeOfArrive(_timeOfArrive);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: kColor1,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        new BoxShadow(
                            color: _timeOfArrive == TimeOfArrive.after
                                ? kColor2
                                : kColor1,
                            blurRadius: 10)
                      ],
                      border: Border.all(
                          color: _timeOfArrive == TimeOfArrive.after
                              ? kColor2
                              : Colors.black,
                          width: _timeOfArrive == TimeOfArrive.after ? 3 : 1),
                    ),
                    child: Text(
                      ksArafaDay,
                      style: kTextStyleButtonTitle.copyWith(color: kColor2),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50.0,
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                ksSave,
                style: kTextStyleButtonTitle.copyWith(color: kColor1),
              ),
              onPressed: () {
                pilgrimProviderObject.setTimeOfArrive(_timeOfArrive);
                pilgrimProviderObject.setHajjType(_hajjType);
                Navigator.pushReplacementNamed(context, HomePage.routeName);
              },
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
