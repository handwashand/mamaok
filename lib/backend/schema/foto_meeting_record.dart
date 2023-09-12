import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotoMeetingRecord extends FirestoreRecord {
  FotoMeetingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "NumberMeet" field.
  int? _numberMeet;
  int get numberMeet => _numberMeet ?? 0;
  bool hasNumberMeet() => _numberMeet != null;

  void _initializeFields() {
    _foto = snapshotData['Foto'] as String?;
    _numberMeet = castToType<int>(snapshotData['NumberMeet']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FotoMeeting');

  static Stream<FotoMeetingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FotoMeetingRecord.fromSnapshot(s));

  static Future<FotoMeetingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FotoMeetingRecord.fromSnapshot(s));

  static FotoMeetingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FotoMeetingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FotoMeetingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FotoMeetingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FotoMeetingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FotoMeetingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFotoMeetingRecordData({
  String? foto,
  int? numberMeet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Foto': foto,
      'NumberMeet': numberMeet,
    }.withoutNulls,
  );

  return firestoreData;
}

class FotoMeetingRecordDocumentEquality implements Equality<FotoMeetingRecord> {
  const FotoMeetingRecordDocumentEquality();

  @override
  bool equals(FotoMeetingRecord? e1, FotoMeetingRecord? e2) {
    return e1?.foto == e2?.foto && e1?.numberMeet == e2?.numberMeet;
  }

  @override
  int hash(FotoMeetingRecord? e) =>
      const ListEquality().hash([e?.foto, e?.numberMeet]);

  @override
  bool isValidKey(Object? o) => o is FotoMeetingRecord;
}
