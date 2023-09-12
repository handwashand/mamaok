import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingsRecord extends FirestoreRecord {
  MeetingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "PlaceStart" field.
  String? _placeStart;
  String get placeStart => _placeStart ?? '';
  bool hasPlaceStart() => _placeStart != null;

  // "PlaceFinish" field.
  String? _placeFinish;
  String get placeFinish => _placeFinish ?? '';
  bool hasPlaceFinish() => _placeFinish != null;

  // "RefCustomer" field.
  DocumentReference? _refCustomer;
  DocumentReference? get refCustomer => _refCustomer;
  bool hasRefCustomer() => _refCustomer != null;

  // "RefCompanion" field.
  DocumentReference? _refCompanion;
  DocumentReference? get refCompanion => _refCompanion;
  bool hasRefCompanion() => _refCompanion != null;

  // "RefWard" field.
  DocumentReference? _refWard;
  DocumentReference? get refWard => _refWard;
  bool hasRefWard() => _refWard != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "StatusNom" field.
  int? _statusNom;
  int get statusNom => _statusNom ?? 0;
  bool hasStatusNom() => _statusNom != null;

  // "Relise" field.
  String? _relise;
  String get relise => _relise ?? '';
  bool hasRelise() => _relise != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "EndPrice" field.
  int? _endPrice;
  int get endPrice => _endPrice ?? 0;
  bool hasEndPrice() => _endPrice != null;

  // "IDCustomer" field.
  String? _iDCustomer;
  String get iDCustomer => _iDCustomer ?? '';
  bool hasIDCustomer() => _iDCustomer != null;

  // "IDCompanion" field.
  String? _iDCompanion;
  String get iDCompanion => _iDCompanion ?? '';
  bool hasIDCompanion() => _iDCompanion != null;

  // "IDWard" field.
  String? _iDWard;
  String get iDWard => _iDWard ?? '';
  bool hasIDWard() => _iDWard != null;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "CustomerFathName" field.
  String? _customerFathName;
  String get customerFathName => _customerFathName ?? '';
  bool hasCustomerFathName() => _customerFathName != null;

  // "CastomerSurname" field.
  String? _castomerSurname;
  String get castomerSurname => _castomerSurname ?? '';
  bool hasCastomerSurname() => _castomerSurname != null;

  // "CustomerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "CompanName" field.
  String? _companName;
  String get companName => _companName ?? '';
  bool hasCompanName() => _companName != null;

  // "CompanFathName" field.
  String? _companFathName;
  String get companFathName => _companFathName ?? '';
  bool hasCompanFathName() => _companFathName != null;

  // "CompanSurname" field.
  String? _companSurname;
  String get companSurname => _companSurname ?? '';
  bool hasCompanSurname() => _companSurname != null;

  // "CompanionPhone" field.
  String? _companionPhone;
  String get companionPhone => _companionPhone ?? '';
  bool hasCompanionPhone() => _companionPhone != null;

  // "WardName" field.
  String? _wardName;
  String get wardName => _wardName ?? '';
  bool hasWardName() => _wardName != null;

  // "WardFathName" field.
  String? _wardFathName;
  String get wardFathName => _wardFathName ?? '';
  bool hasWardFathName() => _wardFathName != null;

  // "WardSurname" field.
  String? _wardSurname;
  String get wardSurname => _wardSurname ?? '';
  bool hasWardSurname() => _wardSurname != null;

  // "WardPhone" field.
  String? _wardPhone;
  String get wardPhone => _wardPhone ?? '';
  bool hasWardPhone() => _wardPhone != null;

  // "PlanMeet" field.
  List<String>? _planMeet;
  List<String> get planMeet => _planMeet ?? const [];
  bool hasPlanMeet() => _planMeet != null;

  // "PlanMeetFree" field.
  String? _planMeetFree;
  String get planMeetFree => _planMeetFree ?? '';
  bool hasPlanMeetFree() => _planMeetFree != null;

  // "Pricing" field.
  String? _pricing;
  String get pricing => _pricing ?? '';
  bool hasPricing() => _pricing != null;

  // "AdressComment" field.
  String? _adressComment;
  String get adressComment => _adressComment ?? '';
  bool hasAdressComment() => _adressComment != null;

  // "MeetComment" field.
  String? _meetComment;
  String get meetComment => _meetComment ?? '';
  bool hasMeetComment() => _meetComment != null;

  // "WardFoto" field.
  String? _wardFoto;
  String get wardFoto => _wardFoto ?? '';
  bool hasWardFoto() => _wardFoto != null;

  // "CompFoto" field.
  String? _compFoto;
  String get compFoto => _compFoto ?? '';
  bool hasCompFoto() => _compFoto != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "ChancelCompanion" field.
  List<String>? _chancelCompanion;
  List<String> get chancelCompanion => _chancelCompanion ?? const [];
  bool hasChancelCompanion() => _chancelCompanion != null;

  // "Nomber" field.
  int? _nomber;
  int get nomber => _nomber ?? 0;
  bool hasNomber() => _nomber != null;

  // "AdresLatLon" field.
  LatLng? _adresLatLon;
  LatLng? get adresLatLon => _adresLatLon;
  bool hasAdresLatLon() => _adresLatLon != null;

  // "StartMeetLatLon" field.
  LatLng? _startMeetLatLon;
  LatLng? get startMeetLatLon => _startMeetLatLon;
  bool hasStartMeetLatLon() => _startMeetLatLon != null;

  // "CountMeet" field.
  int? _countMeet;
  int get countMeet => _countMeet ?? 0;
  bool hasCountMeet() => _countMeet != null;

  // "DateClear" field.
  DateTime? _dateClear;
  DateTime? get dateClear => _dateClear;
  bool hasDateClear() => _dateClear != null;

  // "UidTarif" field.
  int? _uidTarif;
  int get uidTarif => _uidTarif ?? 0;
  bool hasUidTarif() => _uidTarif != null;

  // "CustomerComment" field.
  String? _customerComment;
  String get customerComment => _customerComment ?? '';
  bool hasCustomerComment() => _customerComment != null;

  // "Raiting" field.
  int? _raiting;
  int get raiting => _raiting ?? 0;
  bool hasRaiting() => _raiting != null;

  // "TimeStartMeet" field.
  DateTime? _timeStartMeet;
  DateTime? get timeStartMeet => _timeStartMeet;
  bool hasTimeStartMeet() => _timeStartMeet != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _placeStart = snapshotData['PlaceStart'] as String?;
    _placeFinish = snapshotData['PlaceFinish'] as String?;
    _refCustomer = snapshotData['RefCustomer'] as DocumentReference?;
    _refCompanion = snapshotData['RefCompanion'] as DocumentReference?;
    _refWard = snapshotData['RefWard'] as DocumentReference?;
    _status = snapshotData['Status'] as String?;
    _statusNom = castToType<int>(snapshotData['StatusNom']);
    _relise = snapshotData['Relise'] as String?;
    _price = castToType<int>(snapshotData['Price']);
    _endPrice = castToType<int>(snapshotData['EndPrice']);
    _iDCustomer = snapshotData['IDCustomer'] as String?;
    _iDCompanion = snapshotData['IDCompanion'] as String?;
    _iDWard = snapshotData['IDWard'] as String?;
    _customerName = snapshotData['CustomerName'] as String?;
    _customerFathName = snapshotData['CustomerFathName'] as String?;
    _castomerSurname = snapshotData['CastomerSurname'] as String?;
    _customerPhone = snapshotData['CustomerPhone'] as String?;
    _companName = snapshotData['CompanName'] as String?;
    _companFathName = snapshotData['CompanFathName'] as String?;
    _companSurname = snapshotData['CompanSurname'] as String?;
    _companionPhone = snapshotData['CompanionPhone'] as String?;
    _wardName = snapshotData['WardName'] as String?;
    _wardFathName = snapshotData['WardFathName'] as String?;
    _wardSurname = snapshotData['WardSurname'] as String?;
    _wardPhone = snapshotData['WardPhone'] as String?;
    _planMeet = getDataList(snapshotData['PlanMeet']);
    _planMeetFree = snapshotData['PlanMeetFree'] as String?;
    _pricing = snapshotData['Pricing'] as String?;
    _adressComment = snapshotData['AdressComment'] as String?;
    _meetComment = snapshotData['MeetComment'] as String?;
    _wardFoto = snapshotData['WardFoto'] as String?;
    _compFoto = snapshotData['CompFoto'] as String?;
    _createTime = snapshotData['createTime'] as DateTime?;
    _chancelCompanion = getDataList(snapshotData['ChancelCompanion']);
    _nomber = castToType<int>(snapshotData['Nomber']);
    _adresLatLon = snapshotData['AdresLatLon'] as LatLng?;
    _startMeetLatLon = snapshotData['StartMeetLatLon'] as LatLng?;
    _countMeet = castToType<int>(snapshotData['CountMeet']);
    _dateClear = snapshotData['DateClear'] as DateTime?;
    _uidTarif = castToType<int>(snapshotData['UidTarif']);
    _customerComment = snapshotData['CustomerComment'] as String?;
    _raiting = castToType<int>(snapshotData['Raiting']);
    _timeStartMeet = snapshotData['TimeStartMeet'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Meetings');

  static Stream<MeetingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingsRecord.fromSnapshot(s));

  static Future<MeetingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingsRecord.fromSnapshot(s));

  static MeetingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingsRecordData({
  DateTime? date,
  String? placeStart,
  String? placeFinish,
  DocumentReference? refCustomer,
  DocumentReference? refCompanion,
  DocumentReference? refWard,
  String? status,
  int? statusNom,
  String? relise,
  int? price,
  int? endPrice,
  String? iDCustomer,
  String? iDCompanion,
  String? iDWard,
  String? customerName,
  String? customerFathName,
  String? castomerSurname,
  String? customerPhone,
  String? companName,
  String? companFathName,
  String? companSurname,
  String? companionPhone,
  String? wardName,
  String? wardFathName,
  String? wardSurname,
  String? wardPhone,
  String? planMeetFree,
  String? pricing,
  String? adressComment,
  String? meetComment,
  String? wardFoto,
  String? compFoto,
  DateTime? createTime,
  int? nomber,
  LatLng? adresLatLon,
  LatLng? startMeetLatLon,
  int? countMeet,
  DateTime? dateClear,
  int? uidTarif,
  String? customerComment,
  int? raiting,
  DateTime? timeStartMeet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'PlaceStart': placeStart,
      'PlaceFinish': placeFinish,
      'RefCustomer': refCustomer,
      'RefCompanion': refCompanion,
      'RefWard': refWard,
      'Status': status,
      'StatusNom': statusNom,
      'Relise': relise,
      'Price': price,
      'EndPrice': endPrice,
      'IDCustomer': iDCustomer,
      'IDCompanion': iDCompanion,
      'IDWard': iDWard,
      'CustomerName': customerName,
      'CustomerFathName': customerFathName,
      'CastomerSurname': castomerSurname,
      'CustomerPhone': customerPhone,
      'CompanName': companName,
      'CompanFathName': companFathName,
      'CompanSurname': companSurname,
      'CompanionPhone': companionPhone,
      'WardName': wardName,
      'WardFathName': wardFathName,
      'WardSurname': wardSurname,
      'WardPhone': wardPhone,
      'PlanMeetFree': planMeetFree,
      'Pricing': pricing,
      'AdressComment': adressComment,
      'MeetComment': meetComment,
      'WardFoto': wardFoto,
      'CompFoto': compFoto,
      'createTime': createTime,
      'Nomber': nomber,
      'AdresLatLon': adresLatLon,
      'StartMeetLatLon': startMeetLatLon,
      'CountMeet': countMeet,
      'DateClear': dateClear,
      'UidTarif': uidTarif,
      'CustomerComment': customerComment,
      'Raiting': raiting,
      'TimeStartMeet': timeStartMeet,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingsRecordDocumentEquality implements Equality<MeetingsRecord> {
  const MeetingsRecordDocumentEquality();

  @override
  bool equals(MeetingsRecord? e1, MeetingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.placeStart == e2?.placeStart &&
        e1?.placeFinish == e2?.placeFinish &&
        e1?.refCustomer == e2?.refCustomer &&
        e1?.refCompanion == e2?.refCompanion &&
        e1?.refWard == e2?.refWard &&
        e1?.status == e2?.status &&
        e1?.statusNom == e2?.statusNom &&
        e1?.relise == e2?.relise &&
        e1?.price == e2?.price &&
        e1?.endPrice == e2?.endPrice &&
        e1?.iDCustomer == e2?.iDCustomer &&
        e1?.iDCompanion == e2?.iDCompanion &&
        e1?.iDWard == e2?.iDWard &&
        e1?.customerName == e2?.customerName &&
        e1?.customerFathName == e2?.customerFathName &&
        e1?.castomerSurname == e2?.castomerSurname &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.companName == e2?.companName &&
        e1?.companFathName == e2?.companFathName &&
        e1?.companSurname == e2?.companSurname &&
        e1?.companionPhone == e2?.companionPhone &&
        e1?.wardName == e2?.wardName &&
        e1?.wardFathName == e2?.wardFathName &&
        e1?.wardSurname == e2?.wardSurname &&
        e1?.wardPhone == e2?.wardPhone &&
        listEquality.equals(e1?.planMeet, e2?.planMeet) &&
        e1?.planMeetFree == e2?.planMeetFree &&
        e1?.pricing == e2?.pricing &&
        e1?.adressComment == e2?.adressComment &&
        e1?.meetComment == e2?.meetComment &&
        e1?.wardFoto == e2?.wardFoto &&
        e1?.compFoto == e2?.compFoto &&
        e1?.createTime == e2?.createTime &&
        listEquality.equals(e1?.chancelCompanion, e2?.chancelCompanion) &&
        e1?.nomber == e2?.nomber &&
        e1?.adresLatLon == e2?.adresLatLon &&
        e1?.startMeetLatLon == e2?.startMeetLatLon &&
        e1?.countMeet == e2?.countMeet &&
        e1?.dateClear == e2?.dateClear &&
        e1?.uidTarif == e2?.uidTarif &&
        e1?.customerComment == e2?.customerComment &&
        e1?.raiting == e2?.raiting &&
        e1?.timeStartMeet == e2?.timeStartMeet;
  }

  @override
  int hash(MeetingsRecord? e) => const ListEquality().hash([
        e?.date,
        e?.placeStart,
        e?.placeFinish,
        e?.refCustomer,
        e?.refCompanion,
        e?.refWard,
        e?.status,
        e?.statusNom,
        e?.relise,
        e?.price,
        e?.endPrice,
        e?.iDCustomer,
        e?.iDCompanion,
        e?.iDWard,
        e?.customerName,
        e?.customerFathName,
        e?.castomerSurname,
        e?.customerPhone,
        e?.companName,
        e?.companFathName,
        e?.companSurname,
        e?.companionPhone,
        e?.wardName,
        e?.wardFathName,
        e?.wardSurname,
        e?.wardPhone,
        e?.planMeet,
        e?.planMeetFree,
        e?.pricing,
        e?.adressComment,
        e?.meetComment,
        e?.wardFoto,
        e?.compFoto,
        e?.createTime,
        e?.chancelCompanion,
        e?.nomber,
        e?.adresLatLon,
        e?.startMeetLatLon,
        e?.countMeet,
        e?.dateClear,
        e?.uidTarif,
        e?.customerComment,
        e?.raiting,
        e?.timeStartMeet
      ]);

  @override
  bool isValidKey(Object? o) => o is MeetingsRecord;
}
