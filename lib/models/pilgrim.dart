import 'package:flutter/cupertino.dart';

enum Gender { male, female }

enum TimeOfArrive { before, after }

enum HajjType { ifraad, qiraan, tamattu }

enum MansacType { hajj, omrah }

class Pilgrim {
  final String firstName;
  final String lastName;
  final Gender gender;
  final MansacType mansacType;
  final HajjType hajjType;
  final TimeOfArrive timeOfArrive;

  Pilgrim({@required this.firstName,
    @required this.lastName,
    @required this.gender,
    @required this.mansacType,
    @required this.hajjType,
    @required this.timeOfArrive});
}
