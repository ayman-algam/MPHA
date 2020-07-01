import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpha/models/pilgrim.dart';
import 'package:mpha/provider/pilgrim_provider.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/Title.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:provider/provider.dart';

import '../strings.dart';

class AccountSettings extends StatefulWidget {
  static const routeName = 'accountSettings';

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  final _form = GlobalKey<FormState>();

  final _lastNameFocusNode = FocusNode();

  String _firstName;
  String _lastName;
  Gender _gender;
  MansacType _mansacType;

  bool isInit = true;

  @override
  void didChangeDependencies() {
    final pilgrimProvider = Provider.of<PilgrimProvider>(context);

    if (isInit) {
      _firstName = pilgrimProvider.currentUser.firstName;
      _lastName = pilgrimProvider.currentUser.lastName;
      _gender = pilgrimProvider.currentUser.gender;
      _mansacType = pilgrimProvider.currentUser.mansacType;
    }
    
    isInit = false;
    super.didChangeDependencies();
  }

  void _saveForm() {
    final _isValid = _form.currentState.validate();
    if (!_isValid) {
      return;
    }

    // to save the form
    _form.currentState.save();
  }

  @override
  void dispose() {
    _lastNameFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pilgrimProvider = Provider.of<PilgrimProvider>(context);
    return MainWidget(
      title: ksAccountSettings,
      child: Container(
        color: kColor1,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  // to inter first and last name
                  Form(
                    key: _form,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, left: 8.0, right: 8.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            textDirection: TextDirection.rtl,
                            initialValue: _firstName,
                            style: TextStyle(
                              color: kColor2,
                              fontSize: 18.0,
                            ),
                            cursorColor: kColor2,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              labelText: ksFirstName,
                              labelStyle: TextStyle(
                                color: kColor2,
                                fontSize: 18.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            textInputAction: TextInputAction.next,

                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_lastNameFocusNode);
                            },

                            onSaved: (value) {
                              Provider.of<PilgrimProvider>(context)
                                  .setFirstName(value);
                            },

                            validator: (value) =>
                            value.isEmpty
                                ? ksPleaseInterTheFirstName
                                : null,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          TextFormField(
                            initialValue: _lastName,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: kColor2,
                              fontSize: 18.0,
                            ),
                            cursorColor: kColor2,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              labelText: ksLastName,
                              labelStyle: TextStyle(
                                color: kColor2,
                                fontSize: 18.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            focusNode: _lastNameFocusNode,
                            onSaved: (value) {
                              Provider.of<PilgrimProvider>(context).setLastName(
                                  value);
                            },
                            onFieldSubmitted: (value) {
                              _saveForm();
                            },
                            validator: (value) =>
                            value.isEmpty
                                ? ksPleaseInterTheLastName
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // to chose gender
                  CustomTitle(title: ksChoseGender),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        // select gender male
                        //-----------------------
                        GestureDetector(
                          onTap: () {
                            _gender = Gender.male;
                            pilgrimProvider.setGender(_gender);
                            _saveForm();
                          },
                          child: Container(
                            height: 150.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .40,
                            decoration: BoxDecoration(
                              color: kColor1,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: _gender == Gender.male
                                        ? kColor2
                                        : kColor1,
                                    blurRadius: 10)
                              ],
                              border: Border.all(
                                  color: _gender == Gender.male
                                      ? kColor2
                                      : Colors.black,
                                  width: _gender == Gender.male ? 3 : 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/male.PNG',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    ksMale,
                                    textAlign: TextAlign.end,
                                    style: kTextStyleButtonTitle.copyWith(
                                        color: kColor2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10.0,
                        ),

                        // select gender female
                        //-----------------------
                        GestureDetector(
                          onTap: () {
                            _gender = Gender.female;
                            pilgrimProvider.setGender(_gender);
                            _saveForm();
                          },
                          child: Container(
                            height: 150.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .40,
                            decoration: BoxDecoration(
                              color: kColor1,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: _gender == Gender.female
                                        ? kColor2
                                        : kColor1,
                                    blurRadius: 10)
                              ],
                              border: Border.all(
                                  color: _gender == Gender.female
                                      ? kColor2
                                      : Colors.black,
                                  width: _gender == Gender.female ? 3 : 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/female.PNG',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    ksFemale,
                                    textAlign: TextAlign.end,
                                    style: kTextStyleButtonTitle.copyWith(
                                        color: kColor2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // to chose hajj or omrah
                  CustomTitle(title: ksChoseMansacType),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        //select mansac type - hajj
                        //--------------------------
                        GestureDetector(
                          onTap: () {
                            _mansacType = MansacType.hajj;
                            pilgrimProvider.setMansacType(_mansacType);
                          },
                          child: Container(
                            height: 150.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .40,
                            decoration: BoxDecoration(
                              color: kColor1,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: _mansacType == MansacType.hajj
                                        ? kColor2
                                        : kColor1,
                                    blurRadius: 10)
                              ],
                              border: Border.all(
                                  color: _mansacType == MansacType.hajj
                                      ? kColor2
                                      : Colors.black,
                                  width:
                                  _mansacType == MansacType.hajj ? 3 : 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/manasic_alhajj.png',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    ksHajj,
                                    textAlign: TextAlign.end,
                                    style: kTextStyleButtonTitle.copyWith(
                                        color: kColor2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10.0,
                        ),

                        //select mansac type - omrah
                        //---------------------------
                        GestureDetector(
                          onTap: () {
                            _mansacType = MansacType.omrah;
                            pilgrimProvider.setMansacType(_mansacType);
                          },
                          child: Container(
                            height: 150.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .40,
                            decoration: BoxDecoration(
                              color: kColor1,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: _mansacType == MansacType.omrah
                                        ? kColor2
                                        : kColor1,
                                    blurRadius: 10)
                              ],
                              border: Border.all(
                                  color: _mansacType == MansacType.omrah
                                      ? kColor2
                                      : Colors.black,
                                  width: _mansacType == MansacType.omrah
                                      ? 3
                                      : 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/kaba.PNG',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    ksOmrah,
                                    textAlign: TextAlign.end,
                                    style: kTextStyleButtonTitle.copyWith(
                                        color: kColor2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                  ksOk,
                  style: kTextStyleButtonTitle.copyWith(color: kColor1),
                ),
                onPressed: () {
                  if (pilgrimProvider.targetedScreenFromSettingPage ==
                      'genderNotSet') {
                    print(pilgrimProvider.targetedScreenFromSettingPage);
                  } else if (pilgrimProvider.targetedScreenFromSettingPage ==
                      'mansacTypeNoSet') {
                    print(pilgrimProvider.targetedScreenFromSettingPage);
                  } else {
                    Navigator.pushReplacementNamed(
                        context, pilgrimProvider.targetedScreenFromSettingPage);
                  }
                  pilgrimProvider.isNewUser = false;
                },
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Theme
                    .of(context)
                    .accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
