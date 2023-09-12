import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _FiltrInterests =
          prefs.getStringList('ff_FiltrInterests') ?? _FiltrInterests;
    });
    _safeInit(() {
      _FiltrSex = prefs.getString('ff_FiltrSex') ?? _FiltrSex;
    });
    _safeInit(() {
      _FiltrMinAge = prefs.getInt('ff_FiltrMinAge') ?? _FiltrMinAge;
    });
    _safeInit(() {
      _FiltrMaxAge = prefs.getInt('ff_FiltrMaxAge') ?? _FiltrMaxAge;
    });
    _safeInit(() {
      _FiltrSkills = prefs.getStringList('ff_FiltrSkills') ?? _FiltrSkills;
    });
    _safeInit(() {
      _FiltrExpierence = prefs.getInt('ff_FiltrExpierence') ?? _FiltrExpierence;
    });
    _safeInit(() {
      _FiltrRaiting = prefs.getInt('ff_FiltrRaiting') ?? _FiltrRaiting;
    });
    _safeInit(() {
      _RegEnter = prefs.getInt('ff_RegEnter') ?? _RegEnter;
    });
    _safeInit(() {
      _FiltrCity = prefs.getString('ff_FiltrCity') ?? _FiltrCity;
    });
    _safeInit(() {
      _FiltrCityFull = prefs.getString('ff_FiltrCityFull') ?? _FiltrCityFull;
    });
    _safeInit(() {
      _PhoneWard = prefs.getString('ff_PhoneWard') ?? _PhoneWard;
    });
    _safeInit(() {
      _PlanMeeting = prefs.getStringList('ff_PlanMeeting') ?? _PlanMeeting;
    });
    _safeInit(() {
      _filtrCompanion =
          prefs.getString('ff_filtrCompanion')?.ref ?? _filtrCompanion;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _FiltrInterests = [];
  List<String> get FiltrInterests => _FiltrInterests;
  set FiltrInterests(List<String> _value) {
    _FiltrInterests = _value;
    prefs.setStringList('ff_FiltrInterests', _value);
  }

  void addToFiltrInterests(String _value) {
    _FiltrInterests.add(_value);
    prefs.setStringList('ff_FiltrInterests', _FiltrInterests);
  }

  void removeFromFiltrInterests(String _value) {
    _FiltrInterests.remove(_value);
    prefs.setStringList('ff_FiltrInterests', _FiltrInterests);
  }

  void removeAtIndexFromFiltrInterests(int _index) {
    _FiltrInterests.removeAt(_index);
    prefs.setStringList('ff_FiltrInterests', _FiltrInterests);
  }

  void updateFiltrInterestsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _FiltrInterests[_index] = updateFn(_FiltrInterests[_index]);
    prefs.setStringList('ff_FiltrInterests', _FiltrInterests);
  }

  String _FiltrSex = '';
  String get FiltrSex => _FiltrSex;
  set FiltrSex(String _value) {
    _FiltrSex = _value;
    prefs.setString('ff_FiltrSex', _value);
  }

  int _FiltrMinAge = 18;
  int get FiltrMinAge => _FiltrMinAge;
  set FiltrMinAge(int _value) {
    _FiltrMinAge = _value;
    prefs.setInt('ff_FiltrMinAge', _value);
  }

  int _FiltrMaxAge = 70;
  int get FiltrMaxAge => _FiltrMaxAge;
  set FiltrMaxAge(int _value) {
    _FiltrMaxAge = _value;
    prefs.setInt('ff_FiltrMaxAge', _value);
  }

  List<String> _FiltrSkills = [];
  List<String> get FiltrSkills => _FiltrSkills;
  set FiltrSkills(List<String> _value) {
    _FiltrSkills = _value;
    prefs.setStringList('ff_FiltrSkills', _value);
  }

  void addToFiltrSkills(String _value) {
    _FiltrSkills.add(_value);
    prefs.setStringList('ff_FiltrSkills', _FiltrSkills);
  }

  void removeFromFiltrSkills(String _value) {
    _FiltrSkills.remove(_value);
    prefs.setStringList('ff_FiltrSkills', _FiltrSkills);
  }

  void removeAtIndexFromFiltrSkills(int _index) {
    _FiltrSkills.removeAt(_index);
    prefs.setStringList('ff_FiltrSkills', _FiltrSkills);
  }

  void updateFiltrSkillsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _FiltrSkills[_index] = updateFn(_FiltrSkills[_index]);
    prefs.setStringList('ff_FiltrSkills', _FiltrSkills);
  }

  int _FiltrExpierence = 0;
  int get FiltrExpierence => _FiltrExpierence;
  set FiltrExpierence(int _value) {
    _FiltrExpierence = _value;
    prefs.setInt('ff_FiltrExpierence', _value);
  }

  int _FiltrRaiting = 0;
  int get FiltrRaiting => _FiltrRaiting;
  set FiltrRaiting(int _value) {
    _FiltrRaiting = _value;
    prefs.setInt('ff_FiltrRaiting', _value);
  }

  int _ProfMyParent = 1;
  int get ProfMyParent => _ProfMyParent;
  set ProfMyParent(int _value) {
    _ProfMyParent = _value;
  }

  int _RegEnter = 0;
  int get RegEnter => _RegEnter;
  set RegEnter(int _value) {
    _RegEnter = _value;
    prefs.setInt('ff_RegEnter', _value);
  }

  String _SMScode = '';
  String get SMScode => _SMScode;
  set SMScode(String _value) {
    _SMScode = _value;
  }

  String _Phone = '';
  String get Phone => _Phone;
  set Phone(String _value) {
    _Phone = _value;
  }

  int _SMSRepid = 0;
  int get SMSRepid => _SMSRepid;
  set SMSRepid(int _value) {
    _SMSRepid = _value;
  }

  String _RoleChoose = 'no';
  String get RoleChoose => _RoleChoose;
  set RoleChoose(String _value) {
    _RoleChoose = _value;
  }

  String _FiltrCity = '';
  String get FiltrCity => _FiltrCity;
  set FiltrCity(String _value) {
    _FiltrCity = _value;
    prefs.setString('ff_FiltrCity', _value);
  }

  String _FiltrCityFull = '';
  String get FiltrCityFull => _FiltrCityFull;
  set FiltrCityFull(String _value) {
    _FiltrCityFull = _value;
    prefs.setString('ff_FiltrCityFull', _value);
  }

  String _PhoneWard = '';
  String get PhoneWard => _PhoneWard;
  set PhoneWard(String _value) {
    _PhoneWard = _value;
    prefs.setString('ff_PhoneWard', _value);
  }

  List<String> _PlanMeeting = [];
  List<String> get PlanMeeting => _PlanMeeting;
  set PlanMeeting(List<String> _value) {
    _PlanMeeting = _value;
    prefs.setStringList('ff_PlanMeeting', _value);
  }

  void addToPlanMeeting(String _value) {
    _PlanMeeting.add(_value);
    prefs.setStringList('ff_PlanMeeting', _PlanMeeting);
  }

  void removeFromPlanMeeting(String _value) {
    _PlanMeeting.remove(_value);
    prefs.setStringList('ff_PlanMeeting', _PlanMeeting);
  }

  void removeAtIndexFromPlanMeeting(int _index) {
    _PlanMeeting.removeAt(_index);
    prefs.setStringList('ff_PlanMeeting', _PlanMeeting);
  }

  void updatePlanMeetingAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _PlanMeeting[_index] = updateFn(_PlanMeeting[_index]);
    prefs.setStringList('ff_PlanMeeting', _PlanMeeting);
  }

  int _TimeMeeting = 0;
  int get TimeMeeting => _TimeMeeting;
  set TimeMeeting(int _value) {
    _TimeMeeting = _value;
  }

  DateTime? _DayMeeting;
  DateTime? get DayMeeting => _DayMeeting;
  set DayMeeting(DateTime? _value) {
    _DayMeeting = _value;
  }

  DocumentReference? _filtrCompanion;
  DocumentReference? get filtrCompanion => _filtrCompanion;
  set filtrCompanion(DocumentReference? _value) {
    _filtrCompanion = _value;
    _value != null
        ? prefs.setString('ff_filtrCompanion', _value.path)
        : prefs.remove('ff_filtrCompanion');
  }

  String _FoltrPlanVstrechiFree = '';
  String get FoltrPlanVstrechiFree => _FoltrPlanVstrechiFree;
  set FoltrPlanVstrechiFree(String _value) {
    _FoltrPlanVstrechiFree = _value;
  }

  String _FiltrAdressString = '';
  String get FiltrAdressString => _FiltrAdressString;
  set FiltrAdressString(String _value) {
    _FiltrAdressString = _value;
  }

  String _FiltrAdressComment = '';
  String get FiltrAdressComment => _FiltrAdressComment;
  set FiltrAdressComment(String _value) {
    _FiltrAdressComment = _value;
  }

  String _FiltrMeetComment = '';
  String get FiltrMeetComment => _FiltrMeetComment;
  set FiltrMeetComment(String _value) {
    _FiltrMeetComment = _value;
  }

  String _filtrPriceName = '';
  String get filtrPriceName => _filtrPriceName;
  set filtrPriceName(String _value) {
    _filtrPriceName = _value;
  }

  List<String> _cancelCompanion = [];
  List<String> get cancelCompanion => _cancelCompanion;
  set cancelCompanion(List<String> _value) {
    _cancelCompanion = _value;
  }

  void addToCancelCompanion(String _value) {
    _cancelCompanion.add(_value);
  }

  void removeFromCancelCompanion(String _value) {
    _cancelCompanion.remove(_value);
  }

  void removeAtIndexFromCancelCompanion(int _index) {
    _cancelCompanion.removeAt(_index);
  }

  void updateCancelCompanionAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _cancelCompanion[_index] = updateFn(_cancelCompanion[_index]);
  }

  int _StartMeetTimer = 0;
  int get StartMeetTimer => _StartMeetTimer;
  set StartMeetTimer(int _value) {
    _StartMeetTimer = _value;
  }

  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  set birthday(DateTime? _value) {
    _birthday = _value;
  }

  int _historyCustChange = 0;
  int get historyCustChange => _historyCustChange;
  set historyCustChange(int _value) {
    _historyCustChange = _value;
  }

  LatLng? _AdresLatLon;
  LatLng? get AdresLatLon => _AdresLatLon;
  set AdresLatLon(LatLng? _value) {
    _AdresLatLon = _value;
  }

  int _haveTarif = 0;
  int get haveTarif => _haveTarif;
  set haveTarif(int _value) {
    _haveTarif = _value;
  }

  DocumentReference? _filtrTarifCustomer;
  DocumentReference? get filtrTarifCustomer => _filtrTarifCustomer;
  set filtrTarifCustomer(DocumentReference? _value) {
    _filtrTarifCustomer = _value;
  }

  String _PayStatus = '';
  String get PayStatus => _PayStatus;
  set PayStatus(String _value) {
    _PayStatus = _value;
  }

  String _ZachislSpisanie = 'Зачисление';
  String get ZachislSpisanie => _ZachislSpisanie;
  set ZachislSpisanie(String _value) {
    _ZachislSpisanie = _value;
  }

  DateTime? _calendActive;
  DateTime? get calendActive => _calendActive;
  set calendActive(DateTime? _value) {
    _calendActive = _value;
  }

  int _filtrTarifNom = 0;
  int get filtrTarifNom => _filtrTarifNom;
  set filtrTarifNom(int _value) {
    _filtrTarifNom = _value;
  }

  int _PushCount = 0;
  int get PushCount => _PushCount;
  set PushCount(int _value) {
    _PushCount = _value;
  }

  int _RaitingStars = 0;
  int get RaitingStars => _RaitingStars;
  set RaitingStars(int _value) {
    _RaitingStars = _value;
  }

  String _PayID = '';
  String get PayID => _PayID;
  set PayID(String _value) {
    _PayID = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
