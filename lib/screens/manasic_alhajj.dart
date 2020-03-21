import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/usageAssets.dart';

import '../colors.dart';

enum SelectedGender { male, female }
enum SelectedTime { before, after }
enum SelectedHajjType { ifraad, qiraan, tamattu }

class ManasicAlhajj extends StatefulWidget {
  @override
  _ManasicAlhajjState createState() => _ManasicAlhajjState();
}

class _ManasicAlhajjState extends State<ManasicAlhajj> {
  SelectedGender selectGender;
  SelectedTime selectedTime;
  SelectedHajjType selectedHajjType;

  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksAboutHajj,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ksGender,
              textAlign: TextAlign.right,
              style: myTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 1.0,
              color: kcTextSplash,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = SelectedGender.male;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kcPrimaryColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              new BoxShadow(
                                color: selectGender == SelectedGender.male
                                    ? Colors.yellow
                                    : Colors.black,
                                blurRadius: selectGender == SelectedGender.male
                                    ? 10
                                    : 2.0,
                              ),
                            ]),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 50,
                              color: selectGender == SelectedGender.male
                                  ? Colors.yellow
                                  : kcTextSplash,
                            ),
                            Text(
                              ksMale,
                              style: ksTextStyle2.copyWith(
                                color: selectGender == SelectedGender.male
                                    ? Colors.yellow
                                    : kcTextSplash,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                sizedBoxWidth(10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = SelectedGender.female;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kcPrimaryColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              new BoxShadow(
                                color: selectGender == SelectedGender.female
                                    ? Colors.yellow
                                    : Colors.black,
                                blurRadius:
                                selectGender == SelectedGender.female
                                    ? 10
                                    : 2.0,
                              ),
                            ]),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 50,
                              color: selectGender == SelectedGender.female
                                  ? Colors.yellow
                                  : kcTextSplash,
                            ),
                            Text(
                              ksFemale,
                              style: ksTextStyle2.copyWith(
                                color: selectGender == SelectedGender.female
                                    ? Colors.yellow
                                    : kcTextSplash,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ksTimeToArriveMaka,
              textAlign: TextAlign.right,
              style: myTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 1.0,
              color: kcTextSplash,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTime = SelectedTime.before;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: kcPrimaryColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        new BoxShadow(
                          color: selectedTime == SelectedTime.before
                              ? Colors.yellow
                              : Colors.black,
                          blurRadius:
                          selectedTime == SelectedTime.before ? 10 : 2.0,
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      ksBefore8ZoElhejja,
                      style: ksTextStyle2.copyWith(
                        color: selectedTime == SelectedTime.before
                            ? Colors.yellow
                            : kcTextSplash,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTime = SelectedTime.after;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: kcPrimaryColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        new BoxShadow(
                          color: selectedTime == SelectedTime.after
                              ? Colors.yellow
                              : Colors.black,
                          blurRadius:
                          selectedTime == SelectedTime.after ? 10 : 2.0,
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      ksAfter8ZoElhejja,
                      style: ksTextStyle2.copyWith(
                          color: selectedTime == SelectedTime.after
                              ? Colors.yellow
                              : kcTextSplash),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ksHajjTypes,
              textAlign: TextAlign.right,
              style: myTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 1.0,
              color: kcTextSplash,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedHajjType = SelectedHajjType.ifraad;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kcPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      new BoxShadow(
                        color: selectedHajjType == SelectedHajjType.ifraad
                            ? Colors.yellow
                            : Colors.black,
                        blurRadius: selectedHajjType == SelectedHajjType.ifraad
                            ? 10
                            : 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      ksHajjEfrad,
                      style: ksTextStyle2.copyWith(
                        color: selectedHajjType == SelectedHajjType.ifraad
                            ? Colors.yellow
                            : kcTextSplash,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedHajjType = SelectedHajjType.qiraan;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kcPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      new BoxShadow(
                        color: selectedHajjType == SelectedHajjType.qiraan
                            ? Colors.yellow
                            : Colors.black,
                        blurRadius: selectedHajjType == SelectedHajjType.qiraan
                            ? 10
                            : 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      ksHajjAlQiran,
                      style: ksTextStyle2.copyWith(
                        color: selectedHajjType == SelectedHajjType.qiraan
                            ? Colors.yellow
                            : kcTextSplash,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedHajjType = SelectedHajjType.tamattu;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kcPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      new BoxShadow(
                        color: selectedHajjType == SelectedHajjType.tamattu
                            ? Colors.yellow
                            : Colors.black,
                        blurRadius: selectedHajjType == SelectedHajjType.tamattu
                            ? 10
                            : 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      ksHajjAltamattu,
                      style: ksTextStyle2.copyWith(
                        color: selectedHajjType == SelectedHajjType.tamattu
                            ? Colors.yellow
                            : kcTextSplash,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 15.0, left: 8.0, right: 8.0),
            child: Divider(
              height: 1.0,
              color: kcTextSplash,
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'ht_ifraad');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: kcTextSplash,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      ksSave,
                      style: ksTextStyle2.copyWith(
                        color: kcPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final myTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
  color: kcTextSplash,
);

final myTextStyle2 = TextStyle(
  fontWeight: FontWeight.bold,
);