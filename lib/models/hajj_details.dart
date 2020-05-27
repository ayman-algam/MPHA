import 'package:flutter/cupertino.dart';

enum Gender {
  male,
  female,
}

enum TimeOfArrive {
  before,
  after,
}

enum HajjType {
  ifraad,
  qiraan,
  tamattu,
}

enum MansacType {
  hajj,
  omrah,
}

class HajjDetails {
  final String firstName;
  final String lastName;
  final Gender gender;
  final HajjType hajjType;
  final TimeOfArrive timeOfArrive;

  HajjDetails({@required this.firstName,
    @required this.lastName,
    @required this.gender,
    @required this.hajjType,
    @required this.timeOfArrive});
}