import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mpha/models/hajj_details.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/main_widget.dart';

import '../strings.dart';

class AccountSettings extends StatefulWidget {
  static const routeName = 'accountSettings';

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  ScrollController _controller = ScrollController();

  final _form = GlobalKey<FormState>();

  final _lastNameFocusNode = FocusNode();

  Gender _gender;
  MansacType _mansacType;
  TimeOfArrive _timeOfArrive;
  HajjType _hajjType;

  bool isInit = true;

  var _initValue = {
    'firstName': '',
    'lastName': '',
    'gender': null,
    'hajjType': null,
    'timeOfArraiveToMaka': null
  };

  var _hajjDetails = HajjDetails(
    firstName: '',
    lastName: '',
    gender: null,
    hajjType: null,
    timeOfArrive: null,
  );

  /*@override
  void initState() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(milliseconds: 5000),
      curve: Curves.easeOut,
    );
    super.initState();
  }*/

  @override
  void didChangeDependencies() {
    if (isInit) {}

    isInit = false;
    super.didChangeDependencies();
  }

  void _saveForm() {
    final _isValid = _form.currentState.validate();

    if (!_isValid) {
      return;
    }

    _form.currentState.save();

    print(_hajjDetails.lastName);
  }

  @override
  void dispose() {
    _lastNameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksAccountSettings,
      child: Container(
        color: kColor1,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Form(
                    key: _form,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, left: 8.0, right: 8.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            initialValue: _initValue['firstName'],
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
                              _hajjDetails = HajjDetails(
                                firstName: value,
                                gender: _hajjDetails.gender,
                                lastName: _hajjDetails.lastName,
                                timeOfArrive: _hajjDetails.timeOfArrive,
                                hajjType: _hajjDetails.hajjType,
                              );
                            },
                            validator: (value) =>
                            value.isEmpty
                                ? 'Please Enter the First Name'
                                : null,
                          ),
                          Divider(
                            color: Colors.white30,
                          ),
                          TextFormField(
                            initialValue: _initValue['lastName'],
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
                              _hajjDetails = HajjDetails(
                                firstName: _hajjDetails.firstName,
                                lastName: value,
                                gender: _hajjDetails.gender,
                                timeOfArrive: _hajjDetails.timeOfArrive,
                                hajjType: _hajjDetails.hajjType,
                              );
                            },
                            onFieldSubmitted: (value) {},
                            validator: (value) =>
                            value.isEmpty
                                ? 'Please Enter the Last Name'
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),

                  buildTitle(ksChoseGender),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _gender = Gender.male;
                            });
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _gender = Gender.female;
                            });
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

                  // the gender
                  buildTitle(ksChoseMansacType),

                  // mansac type
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _mansacType = MansacType.hajj;
                            });
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _mansacType = MansacType.omrah;
                            });
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
                                  width:
                                  _mansacType == MansacType.omrah ? 3 : 1),
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

                  if (_mansacType == MansacType.hajj)
                    Container(
                      height: 550,
                      child: ListView(
                        controller: _controller,
                        children: <Widget>[
                          // chose hajj type
                          buildTitle(ksHajjTypes),

                          // hajj types
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // ifraad
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _hajjType = HajjType.ifraad;
                                    });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: kColor1,
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        boxShadow: [
                                          new BoxShadow(
                                              color:
                                              _hajjType == HajjType.ifraad
                                                  ? kColor2
                                                  : kColor1,
                                              blurRadius: 10)
                                        ],
                                        border: Border.all(
                                            color: _hajjType == HajjType.ifraad
                                                ? kColor2
                                                : Colors.black,
                                            width: _hajjType == HajjType.ifraad
                                                ? 3
                                                : 1),
                                      ),
                                      child: Text(
                                        ksHajjEfrad,
                                        style: kTextStyleButtonTitle.copyWith(
                                            color: kColor2),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                // qiraan
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _hajjType = HajjType.qiraan;
                                    });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: kColor1,
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        boxShadow: [
                                          new BoxShadow(
                                              color:
                                              _hajjType == HajjType.qiraan
                                                  ? kColor2
                                                  : kColor1,
                                              blurRadius: 10)
                                        ],
                                        border: Border.all(
                                            color: _hajjType == HajjType.qiraan
                                                ? kColor2
                                                : Colors.black,
                                            width: _hajjType == HajjType.qiraan
                                                ? 3
                                                : 1),
                                      ),
                                      child: Text(
                                        ksHajjAlQiran,
                                        style: kTextStyleButtonTitle.copyWith(
                                            color: kColor2),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                // tamattu
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _hajjType = HajjType.tamattu;
                                    });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: kColor1,
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        boxShadow: [
                                          new BoxShadow(
                                              color:
                                              _hajjType == HajjType.tamattu
                                                  ? kColor2
                                                  : kColor1,
                                              blurRadius: 10)
                                        ],
                                        border: Border.all(
                                            color: _hajjType == HajjType.tamattu
                                                ? kColor2
                                                : Colors.black,
                                            width: _hajjType == HajjType.tamattu
                                                ? 3
                                                : 1),
                                      ),
                                      child: Text(
                                        ksHajjAltamattu,
                                        style: kTextStyleButtonTitle.copyWith(
                                            color: kColor2),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                          ),

                          buildTitle(ksTimeToArriveMaka),

                          // time of arrive to maca

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // before 8 zoalhiga
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _timeOfArrive = TimeOfArrive.before;
                                    });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: kColor1,
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        boxShadow: [
                                          new BoxShadow(
                                              color: _timeOfArrive ==
                                                  TimeOfArrive.before
                                                  ? kColor2
                                                  : kColor1,
                                              blurRadius: 10)
                                        ],
                                        border: Border.all(
                                            color: _timeOfArrive ==
                                                TimeOfArrive.before
                                                ? kColor2
                                                : Colors.black,
                                            width: _timeOfArrive ==
                                                TimeOfArrive.before
                                                ? 3
                                                : 1),
                                      ),
                                      child: Text(
                                        ksBefore8ZoElhejja,
                                        style: kTextStyleButtonTitle.copyWith(
                                            color: kColor2),
                                        textAlign: TextAlign.center,
                                      )),
                                ),

                                // after
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _timeOfArrive = TimeOfArrive.after;
                                    });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: kColor1,
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        boxShadow: [
                                          new BoxShadow(
                                              color: _timeOfArrive ==
                                                  TimeOfArrive.after
                                                  ? kColor2
                                                  : kColor1,
                                              blurRadius: 10)
                                        ],
                                        border: Border.all(
                                            color: _timeOfArrive ==
                                                TimeOfArrive.after
                                                ? kColor2
                                                : Colors.black,
                                            width: _timeOfArrive ==
                                                TimeOfArrive.after
                                                ? 3
                                                : 1),
                                      ),
                                      child: Text(
                                        ksArafaDay,
                                        style: kTextStyleButtonTitle.copyWith(
                                            color: kColor2),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                          )
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
                  'Save',
                  style: kTextStyleButtonTitle.copyWith(color: kColor1),
                ),
                onPressed: _saveForm,
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

  Widget buildTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Text(
            title,
            style: kTextStyleTitle1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
          child: Divider(
            color: kColor2,
            thickness: 2.5,
          ),
        ),
      ],
    );
  }
}
