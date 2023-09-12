import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaceMeetingRecord extends FirestoreRecord {
  PlaceMeetingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Place" field.
  String? _place;
  String get place => _place ?? '';
  bool hasPlace() => _place != null;

  // "Raiting" field.
  int? _raiting;
  int get raiting => _raiting ?? 0;
  bool hasRaiting() => _raiting != null;

  void _initializeFields() {
    _place = snapshotData['Place'] as String?;
    _raiting = castToType<int>(snapshotData['Raiting']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PlaceMeeting');

  static Stream<PlaceMeetingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlaceMeetingRecord.fromSnapshot(s));

  static Future<PlaceMeetingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlaceMeetingRecord.fromSnapshot(s));

  static PlaceMeetingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlaceMeetingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlaceMeetingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlaceMeetingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlaceMeetingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlaceMeetingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlaceMeetingRecordData({
  String? place,
  int? raiting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Place': place,
      'Raiting': raiting,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlaceMeetingRecordDocumentEquality
    implements Equality<PlaceMeetingRecord> {
  const PlaceMeetingRecordDocumentEquality();

  @override
  bool equals(PlaceMeetingRecord? e1, PlaceMeetingRecord? e2) {
    return e1?.place == e2?.place && e1?.raiting == e2?.raiting;
  }

  @override
  int hash(PlaceMeetingRecord? e) =>
      const ListEquality().hash([e?.place, e?.raiting]);

  @override
  bool isValidKey(Object? o) => o is PlaceMeetingRecord;
}
