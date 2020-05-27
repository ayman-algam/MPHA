import 'package:flutter/material.dart';
import 'package:mpha/screens/ht_Ifraad.dart';
import 'package:mpha/screens/ht_Qiraan.dart';
import 'package:mpha/screens/ht_Tamattu.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/theme.dart';
import 'package:mpha/widgets/custom_divider.dart';
import 'package:mpha/widgets/main_widget.dart';

enum SelectedGender { male, female }
enum SelectedTime { before, after }
enum SelectedHajjType { ifraad, qiraan, tamattu }

class ManasicAlhajj extends StatefulWidget {

  static const routName = 'manasicAlhajj';

  @override
  _ManasicAlhajjState createState() => _ManasicAlhajjState();
}

class _ManasicAlhajjState extends State<ManasicAlhajj> {
  SelectedGender selectGender;
  SelectedTime selectedTime;
  SelectedHajjType selectedHajjType;

  String _targetedPage;

  final double itemHeight = 50.0;

  void gotoM() {
    switch (selectedHajjType) {
      case SelectedHajjType.ifraad:
        {
          _targetedPage = HTIfraad.routeName;
        }
        break;
      case SelectedHajjType.qiraan:
        {
          _targetedPage = HTQiraan.routeName;
        }
        break;
      case SelectedHajjType.tamattu:
        {
          _targetedPage = HTTamattu.routeName;
        }
        break;
    }

    Navigator.pushNamed(context, _targetedPage);
  }

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksAboutHajj,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          // gender text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ksGender,
              textAlign: TextAlign.right,
              style: myTextStyle,
            ),
          ),

          CustomDivider(),

          Row(
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
                          color: kColor1,
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
                      child: Container(
                        height: 150,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage("assets/images/male.PNG"),
                                ),
                              ),
                            ),
                            Text(
                              ksMale,
                              style: kTextStyleButtonTitle.copyWith(
                                color: selectGender == SelectedGender.male
                                    ? Colors.yellow
                                    : kColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                          color: kColor1,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            new BoxShadow(
                              color: selectGender == SelectedGender.female
                                  ? Colors.yellow
                                  : Colors.black,
                              blurRadius: selectGender == SelectedGender.female
                                  ? 10
                                  : 2.0,
                            ),
                          ]),
                      child: Container(
                        height: 150,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage("assets/images/female.PNG"),
                                ),
                              ),
                            ),
                            Text(
                              ksFemale,
                              style: kTextStyleButtonTitle.copyWith(
                                color: selectGender == SelectedGender.female
                                    ? Colors.yellow
                                    : kColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ksTimeToArriveMaka,
              textAlign: TextAlign.right,
              style: myTextStyle,
            ),
          ),

          CustomDivider(),

          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTime = SelectedTime.after;
                      });
                    },
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: kColor1,
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
                          ksArafaDay,
                          textAlign: TextAlign.center,
                          style: kTextStyleButtonTitle.copyWith(
                            color: selectedTime == SelectedTime.after
                                ? Colors.yellow
                                : kColor2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTime = SelectedTime.before;
                      });
                    },
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: kColor1,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            new BoxShadow(
                              color: selectedTime == SelectedTime.before
                                  ? Colors.yellow
                                  : Colors.black,
                              blurRadius: selectedTime == SelectedTime.before
                                  ? 10
                                  : 2.0,
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          ksBefore8ZoElhejja,
                          textAlign: TextAlign.center,
                          style: kTextStyleButtonTitle.copyWith(
                            color: selectedTime == SelectedTime.before
                                ? Colors.yellow
                                : kColor2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ksHajjTypes,
              textAlign: TextAlign.right,
              style: myTextStyle,
            ),
          ),

          CustomDivider(),

          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedHajjType = SelectedHajjType.ifraad;
                      });
                    },
                    child: Container(
                      height: itemHeight,
                      decoration: BoxDecoration(
                        color: kColor1,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          new BoxShadow(
                            color: selectedHajjType == SelectedHajjType.ifraad
                                ? Colors.yellow
                                : Colors.black,
                            blurRadius:
                            selectedHajjType == SelectedHajjType.ifraad
                                ? 10
                                : 2.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          ksHajjEfrad,
                          style: kTextStyleButtonTitle.copyWith(
                            color: selectedHajjType == SelectedHajjType.ifraad
                                ? Colors.yellow
                                : kColor2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedHajjType = SelectedHajjType.qiraan;
                      });
                    },
                    child: Container(
                      height: itemHeight,
                      decoration: BoxDecoration(
                        color: kColor1,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          new BoxShadow(
                            color: selectedHajjType == SelectedHajjType.qiraan
                                ? Colors.yellow
                                : Colors.black,
                            blurRadius:
                            selectedHajjType == SelectedHajjType.qiraan
                                ? 10
                                : 2.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          ksHajjAlQiran,
                          style: kTextStyleButtonTitle.copyWith(
                            color: selectedHajjType == SelectedHajjType.qiraan
                                ? Colors.yellow
                                : kColor2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedHajjType = SelectedHajjType.tamattu;
                });
              },
              child: Container(
                height: itemHeight,
                decoration: BoxDecoration(
                  color: kColor1,
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
                    style: kTextStyleButtonTitle.copyWith(
                      color: selectedHajjType == SelectedHajjType.tamattu
                          ? Colors.yellow
                          : kColor2,
                    ),
                  ),
                ),
              ),
            ),
          ),

          CustomDivider(),

          GestureDetector(
            onTap: gotoM,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                height: itemHeight + 10,
                decoration: BoxDecoration(
                  color: kColor2,
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
                    style: kTextStyleButtonTitle.copyWith(
                      color: kColor1,
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
  color: kColor2,
);

final myTextStyle2 = TextStyle(
  fontWeight: FontWeight.bold,
);
