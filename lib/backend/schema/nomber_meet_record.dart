import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NomberMeetRecord extends FirestoreRecord {
  NomberMeetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  // "Indicator" field.
  int? _indicator;
  int get indicator => _indicator ?? 0;
  bool hasIndicator() => _indicator != null;

  void _initializeFields() {
    _number = castToType<int>(snapshotData['Number']);
    _indicator = castToType<int>(snapshotData['Indicator']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NomberMeet');

  static Stream<NomberMeetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NomberMeetRecord.fromSnapshot(s));

  static Future<NomberMeetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NomberMeetRecord.fromSnapshot(s));

  static NomberMeetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NomberMeetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NomberMeetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NomberMeetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NomberMeetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NomberMeetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNomberMeetRecordData({
  int? number,
  int? indicator,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Number': number,
      'Indicator': indicator,
    }.withoutNulls,
  );

  return firestoreData;
}

class NomberMeetRecordDocumentEquality implements Equality<NomberMeetRecord> {
  const NomberMeetRecordDocumentEquality();

  @override
  bool equals(NomberMeetRecord? e1, NomberMeetRecord? e2) {
    return e1?.number == e2?.number && e1?.indicator == e2?.indicator;
  }

  @override
  int hash(NomberMeetRecord? e) =>
      const ListEquality().hash([e?.number, e?.indicator]);

  @override
  bool isValidKey(Object? o) => o is NomberMeetRecord;
}
