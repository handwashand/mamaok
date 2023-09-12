import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DopMoneyMeetingRecord extends FirestoreRecord {
  DopMoneyMeetingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Money" field.
  int? _money;
  int get money => _money ?? 0;
  bool hasMoney() => _money != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "NomMeet" field.
  int? _nomMeet;
  int get nomMeet => _nomMeet ?? 0;
  bool hasNomMeet() => _nomMeet != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _money = castToType<int>(snapshotData['Money']);
    _foto = snapshotData['Foto'] as String?;
    _nomMeet = castToType<int>(snapshotData['NomMeet']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DopMoneyMeeting');

  static Stream<DopMoneyMeetingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DopMoneyMeetingRecord.fromSnapshot(s));

  static Future<DopMoneyMeetingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DopMoneyMeetingRecord.fromSnapshot(s));

  static DopMoneyMeetingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DopMoneyMeetingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DopMoneyMeetingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DopMoneyMeetingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DopMoneyMeetingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DopMoneyMeetingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDopMoneyMeetingRecordData({
  String? name,
  int? money,
  String? foto,
  int? nomMeet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Money': money,
      'Foto': foto,
      'NomMeet': nomMeet,
    }.withoutNulls,
  );

  return firestoreData;
}

class DopMoneyMeetingRecordDocumentEquality
    implements Equality<DopMoneyMeetingRecord> {
  const DopMoneyMeetingRecordDocumentEquality();

  @override
  bool equals(DopMoneyMeetingRecord? e1, DopMoneyMeetingRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.money == e2?.money &&
        e1?.foto == e2?.foto &&
        e1?.nomMeet == e2?.nomMeet;
  }

  @override
  int hash(DopMoneyMeetingRecord? e) =>
      const ListEquality().hash([e?.name, e?.money, e?.foto, e?.nomMeet]);

  @override
  bool isValidKey(Object? o) => o is DopMoneyMeetingRecord;
}
