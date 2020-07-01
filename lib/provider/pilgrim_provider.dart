import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpha/models/pilgrim.dart';
import 'package:mpha/screens/account_setting_hajj.dart';
import 'package:mpha/screens/ht_Ifraad.dart';
import 'package:mpha/screens/ht_Qiraan.dart';
import 'package:mpha/screens/ht_Tamattu.dart';
import 'package:mpha/screens/manasic_alomrah.dart';
import 'package:mpha/screens/settings.dart';
import 'package:mpha/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PilgrimProvider with ChangeNotifier {
  bool isNewUser = true;

  String _firstName;
  String _lastName;
  Gender _gender;
  MansacType _mansacType;
  HajjType _hajjType;
  TimeOfArrive _timeOfArrive;

  Pilgrim _currentUser = Pilgrim(
    firstName: '',
    lastName: '',
    gender: null,
    mansacType: null,
    hajjType: null,
    timeOfArrive: null,
  );

  Pilgrim get currentUser {
    return _currentUser;
  }

  Future<void> logIn() async {
    final prefs = await SharedPreferences.getInstance();

    final currentUserData = jsonEncode(
      {
        'firstName': _firstName,
        'lastName': _lastName,
        'gender': _gender,
        'mansacType': _mansacType,
        'hajjType': _hajjType,
        'timeToArrive': _timeOfArrive,
      },
    );
    prefs.setString('currentUserData', currentUserData);
  }

  Future<bool> autoLogIn() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('currentUserData')) {
      return false;
    }

    final extractedData =
        json.decode(prefs.getString('currentUserData')) as Map<String, Object>;

    _firstName = extractedData['firstName'];
    _lastName = extractedData['lastName'];
    _gender = extractedData['gender'];
    _mansacType = extractedData['mansacType'];
    _hajjType = extractedData['hajjType'];
    _timeOfArrive = extractedData['timeToArrive'];

    return true;
  }

  void setFirstName(String firstName) {
    _firstName = firstName;
    _currentUser = Pilgrim(
      firstName: firstName,
      lastName: _currentUser.lastName,
      gender: _currentUser.gender,
      mansacType: _currentUser.mansacType,
      hajjType: _currentUser.hajjType,
      timeOfArrive: _currentUser.timeOfArrive,
    );
    notifyListeners();
  }

  void setLastName(String lastName) {
    _lastName = lastName;
    _currentUser = Pilgrim(
      firstName: _currentUser.firstName,
      lastName: lastName,
      gender: _currentUser.gender,
      mansacType: _currentUser.mansacType,
      hajjType: _currentUser.hajjType,
      timeOfArrive: _currentUser.timeOfArrive,
    );
    notifyListeners();
  }

  void setGender(Gender gender) {
    _gender = gender;
    _currentUser = Pilgrim(
      firstName: _currentUser.firstName,
      lastName: _currentUser.lastName,
      gender: gender,
      mansacType: _currentUser.mansacType,
      hajjType: _currentUser.hajjType,
      timeOfArrive: _currentUser.timeOfArrive,
    );

    notifyListeners();
  }

  void setMansacType(MansacType mansacType) {
    _mansacType = mansacType;
    _currentUser = Pilgrim(
      firstName: _currentUser.firstName,
      lastName: _currentUser.lastName,
      gender: _currentUser.gender,
      mansacType: mansacType,
      hajjType: _currentUser.hajjType,
      timeOfArrive: _currentUser.timeOfArrive,
    );
    notifyListeners();
  }

  void setHajjType(HajjType hajjType) {
    _hajjType = hajjType;
    _currentUser = Pilgrim(
      firstName: _currentUser.firstName,
      lastName: _currentUser.lastName,
      gender: _currentUser.gender,
      mansacType: _currentUser.mansacType,
      hajjType: hajjType,
      timeOfArrive: _currentUser.timeOfArrive,
    );
    notifyListeners();
  }

  void setTimeOfArrive(TimeOfArrive timeOfArrive) {
    _timeOfArrive = timeOfArrive;
    _currentUser = Pilgrim(
      firstName: _currentUser.firstName,
      lastName: _currentUser.lastName,
      gender: _currentUser.gender,
      mansacType: _currentUser.mansacType,
      hajjType: _currentUser.hajjType,
      timeOfArrive: timeOfArrive,
    );
    notifyListeners();
  }

  String get gender {
    switch (_currentUser.gender) {
      case Gender.male:
        return ksMale;
        break;
      case Gender.female:
        return ksFemale;
        break;
    }
    return 'غير محدد';
  }

  String get mansacType {
    switch (_currentUser.mansacType) {
      case MansacType.hajj:
        return ksHajj;
        break;
      case MansacType.omrah:
        return ksOmrah;
        break;
    }
    return 'غير محدد';
  }

  String get hajjType {
    switch (_currentUser.hajjType) {
      case HajjType.ifraad:
        return ksHajjEfrad;
        break;
      case HajjType.qiraan:
        return ksHajjAlQiran;
        break;
      case HajjType.tamattu:
        ksHajjAltamattu;
        break;
    }
    return 'غير محدد';
  }

  String get timeOfArrive {
    switch (_currentUser.timeOfArrive) {
      case TimeOfArrive.before:
        return ksBefore8ZoElhejja;
        break;
      case TimeOfArrive.after:
        return ksArafaDay;
        break;
    }
    return 'غير محدد';
  }

  String get targetedScreen {
    if (_gender == null) {
      return null;
    }
    if (_mansacType == MansacType.omrah) {
      return ManasicAlOmrah.routeName;
    } else {
      switch (currentUser.hajjType) {
        case HajjType.ifraad:
          return HTIfraad.routeName;
        case HajjType.qiraan:
          return HTQiraan.routeName;
        case HajjType.tamattu:
          return HTTamattu.routeName;
      }
    }

    return null;
  }

  String get targetedScreenFromSettingPage {
    if (_gender == null) {
      return 'genderNotSet';
    } else {
      if (_mansacType == null) {
        return 'mansacTypeNoSet';
      } else {
        switch (_mansacType) {
          case MansacType.hajj:
            return AccountSettingsHajj.routeName;
          case MansacType.omrah:
            return Settings.routeName;
        }
        return 'error';
      }
    }
  }

  String get buttonText {
    if (currentUser.mansacType == MansacType.omrah) {
      return ksAlOmrah;
    } else {
      switch (currentUser.hajjType) {
        case HajjType.ifraad:
          return ksHajjEfrad;
        case HajjType.qiraan:
          return ksHajjAlQiran;
        case HajjType.tamattu:
          return ksHajjAltamattu;
      }
    }
    return null;
  }
}
