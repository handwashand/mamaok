import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Balace" field.
  int? _balace;
  int get balace => _balace ?? 0;
  bool hasBalace() => _balace != null;

  // "Age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "Raiting" field.
  double? _raiting;
  double get raiting => _raiting ?? 0.0;
  bool hasRaiting() => _raiting != null;

  // "VideoComp" field.
  String? _videoComp;
  String get videoComp => _videoComp ?? '';
  bool hasVideoComp() => _videoComp != null;

  // "Role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "WardRef" field.
  DocumentReference? _wardRef;
  DocumentReference? get wardRef => _wardRef;
  bool hasWardRef() => _wardRef != null;

  // "CustomerRef" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  // "Surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "FatherName" field.
  String? _fatherName;
  String get fatherName => _fatherName ?? '';
  bool hasFatherName() => _fatherName != null;

  // "ZaprosWard" field.
  int? _zaprosWard;
  int get zaprosWard => _zaprosWard ?? 0;
  bool hasZaprosWard() => _zaprosWard != null;

  // "WardName" field.
  String? _wardName;
  String get wardName => _wardName ?? '';
  bool hasWardName() => _wardName != null;

  // "WardSurmame" field.
  String? _wardSurmame;
  String get wardSurmame => _wardSurmame ?? '';
  bool hasWardSurmame() => _wardSurmame != null;

  // "WardPhone" field.
  String? _wardPhone;
  String get wardPhone => _wardPhone ?? '';
  bool hasWardPhone() => _wardPhone != null;

  // "WardID" field.
  String? _wardID;
  String get wardID => _wardID ?? '';
  bool hasWardID() => _wardID != null;

  // "Sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "DateBirthday" field.
  DateTime? _dateBirthday;
  DateTime? get dateBirthday => _dateBirthday;
  bool hasDateBirthday() => _dateBirthday != null;

  // "Mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  bool hasMail() => _mail != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "WorkExperience" field.
  int? _workExperience;
  int get workExperience => _workExperience ?? 0;
  bool hasWorkExperience() => _workExperience != null;

  // "Skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "WardFhatherName" field.
  String? _wardFhatherName;
  String get wardFhatherName => _wardFhatherName ?? '';
  bool hasWardFhatherName() => _wardFhatherName != null;

  // "WardFoto" field.
  String? _wardFoto;
  String get wardFoto => _wardFoto ?? '';
  bool hasWardFoto() => _wardFoto != null;

  // "PointRaiting" field.
  int? _pointRaiting;
  int get pointRaiting => _pointRaiting ?? 0;
  bool hasPointRaiting() => _pointRaiting != null;

  // "Education" field.
  String? _education;
  String get education => _education ?? '';
  bool hasEducation() => _education != null;

  // "Languege" field.
  String? _languege;
  String get languege => _languege ?? '';
  bool hasLanguege() => _languege != null;

  // "AboutMe" field.
  String? _aboutMe;
  String get aboutMe => _aboutMe ?? '';
  bool hasAboutMe() => _aboutMe != null;

  // "PayID" field.
  String? _payID;
  String get payID => _payID ?? '';
  bool hasPayID() => _payID != null;

  // "PaySumm" field.
  int? _paySumm;
  int get paySumm => _paySumm ?? 0;
  bool hasPaySumm() => _paySumm != null;

  // "PayURL" field.
  String? _payURL;
  String get payURL => _payURL ?? '';
  bool hasPayURL() => _payURL != null;

  // "CompVideo" field.
  String? _compVideo;
  String get compVideo => _compVideo ?? '';
  bool hasCompVideo() => _compVideo != null;

  // "Favorit" field.
  List<DocumentReference>? _favorit;
  List<DocumentReference> get favorit => _favorit ?? const [];
  bool hasFavorit() => _favorit != null;

  // "Profi" field.
  String? _profi;
  String get profi => _profi ?? '';
  bool hasProfi() => _profi != null;

  // "Dosug" field.
  String? _dosug;
  String get dosug => _dosug ?? '';
  bool hasDosug() => _dosug != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _balace = castToType<int>(snapshotData['Balace']);
    _age = castToType<int>(snapshotData['Age']);
    _raiting = castToType<double>(snapshotData['Raiting']);
    _videoComp = snapshotData['VideoComp'] as String?;
    _role = snapshotData['Role'] as String?;
    _wardRef = snapshotData['WardRef'] as DocumentReference?;
    _customerRef = snapshotData['CustomerRef'] as DocumentReference?;
    _surname = snapshotData['Surname'] as String?;
    _fatherName = snapshotData['FatherName'] as String?;
    _zaprosWard = castToType<int>(snapshotData['ZaprosWard']);
    _wardName = snapshotData['WardName'] as String?;
    _wardSurmame = snapshotData['WardSurmame'] as String?;
    _wardPhone = snapshotData['WardPhone'] as String?;
    _wardID = snapshotData['WardID'] as String?;
    _sex = snapshotData['Sex'] as String?;
    _dateBirthday = snapshotData['DateBirthday'] as DateTime?;
    _mail = snapshotData['Mail'] as String?;
    _city = snapshotData['City'] as String?;
    _workExperience = castToType<int>(snapshotData['WorkExperience']);
    _skills = getDataList(snapshotData['Skills']);
    _wardFhatherName = snapshotData['WardFhatherName'] as String?;
    _wardFoto = snapshotData['WardFoto'] as String?;
    _pointRaiting = castToType<int>(snapshotData['PointRaiting']);
    _education = snapshotData['Education'] as String?;
    _languege = snapshotData['Languege'] as String?;
    _aboutMe = snapshotData['AboutMe'] as String?;
    _payID = snapshotData['PayID'] as String?;
    _paySumm = castToType<int>(snapshotData['PaySumm']);
    _payURL = snapshotData['PayURL'] as String?;
    _compVideo = snapshotData['CompVideo'] as String?;
    _favorit = getDataList(snapshotData['Favorit']);
    _profi = snapshotData['Profi'] as String?;
    _dosug = snapshotData['Dosug'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? balace,
  int? age,
  double? raiting,
  String? videoComp,
  String? role,
  DocumentReference? wardRef,
  DocumentReference? customerRef,
  String? surname,
  String? fatherName,
  int? zaprosWard,
  String? wardName,
  String? wardSurmame,
  String? wardPhone,
  String? wardID,
  String? sex,
  DateTime? dateBirthday,
  String? mail,
  String? city,
  int? workExperience,
  String? wardFhatherName,
  String? wardFoto,
  int? pointRaiting,
  String? education,
  String? languege,
  String? aboutMe,
  String? payID,
  int? paySumm,
  String? payURL,
  String? compVideo,
  String? profi,
  String? dosug,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Balace': balace,
      'Age': age,
      'Raiting': raiting,
      'VideoComp': videoComp,
      'Role': role,
      'WardRef': wardRef,
      'CustomerRef': customerRef,
      'Surname': surname,
      'FatherName': fatherName,
      'ZaprosWard': zaprosWard,
      'WardName': wardName,
      'WardSurmame': wardSurmame,
      'WardPhone': wardPhone,
      'WardID': wardID,
      'Sex': sex,
      'DateBirthday': dateBirthday,
      'Mail': mail,
      'City': city,
      'WorkExperience': workExperience,
      'WardFhatherName': wardFhatherName,
      'WardFoto': wardFoto,
      'PointRaiting': pointRaiting,
      'Education': education,
      'Languege': languege,
      'AboutMe': aboutMe,
      'PayID': payID,
      'PaySumm': paySumm,
      'PayURL': payURL,
      'CompVideo': compVideo,
      'Profi': profi,
      'Dosug': dosug,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.balace == e2?.balace &&
        e1?.age == e2?.age &&
        e1?.raiting == e2?.raiting &&
        e1?.videoComp == e2?.videoComp &&
        e1?.role == e2?.role &&
        e1?.wardRef == e2?.wardRef &&
        e1?.customerRef == e2?.customerRef &&
        e1?.surname == e2?.surname &&
        e1?.fatherName == e2?.fatherName &&
        e1?.zaprosWard == e2?.zaprosWard &&
        e1?.wardName == e2?.wardName &&
        e1?.wardSurmame == e2?.wardSurmame &&
        e1?.wardPhone == e2?.wardPhone &&
        e1?.wardID == e2?.wardID &&
        e1?.sex == e2?.sex &&
        e1?.dateBirthday == e2?.dateBirthday &&
        e1?.mail == e2?.mail &&
        e1?.city == e2?.city &&
        e1?.workExperience == e2?.workExperience &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        e1?.wardFhatherName == e2?.wardFhatherName &&
        e1?.wardFoto == e2?.wardFoto &&
        e1?.pointRaiting == e2?.pointRaiting &&
        e1?.education == e2?.education &&
        e1?.languege == e2?.languege &&
        e1?.aboutMe == e2?.aboutMe &&
        e1?.payID == e2?.payID &&
        e1?.paySumm == e2?.paySumm &&
        e1?.payURL == e2?.payURL &&
        e1?.compVideo == e2?.compVideo &&
        listEquality.equals(e1?.favorit, e2?.favorit) &&
        e1?.profi == e2?.profi &&
        e1?.dosug == e2?.dosug;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.balace,
        e?.age,
        e?.raiting,
        e?.videoComp,
        e?.role,
        e?.wardRef,
        e?.customerRef,
        e?.surname,
        e?.fatherName,
        e?.zaprosWard,
        e?.wardName,
        e?.wardSurmame,
        e?.wardPhone,
        e?.wardID,
        e?.sex,
        e?.dateBirthday,
        e?.mail,
        e?.city,
        e?.workExperience,
        e?.skills,
        e?.wardFhatherName,
        e?.wardFoto,
        e?.pointRaiting,
        e?.education,
        e?.languege,
        e?.aboutMe,
        e?.payID,
        e?.paySumm,
        e?.payURL,
        e?.compVideo,
        e?.favorit,
        e?.profi,
        e?.dosug
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
