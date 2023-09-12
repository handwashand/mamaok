import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterestsRecord extends FirestoreRecord {
  InterestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Raiting" field.
  int? _raiting;
  int get raiting => _raiting ?? 0;
  bool hasRaiting() => _raiting != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _raiting = castToType<int>(snapshotData['Raiting']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Interests');

  static Stream<InterestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterestsRecord.fromSnapshot(s));

  static Future<InterestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InterestsRecord.fromSnapshot(s));

  static InterestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterestsRecordData({
  String? name,
  int? raiting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Raiting': raiting,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterestsRecordDocumentEquality implements Equality<InterestsRecord> {
  const InterestsRecordDocumentEquality();

  @override
  bool equals(InterestsRecord? e1, InterestsRecord? e2) {
    return e1?.name == e2?.name && e1?.raiting == e2?.raiting;
  }

  @override
  int hash(InterestsRecord? e) =>
      const ListEquality().hash([e?.name, e?.raiting]);

  @override
  bool isValidKey(Object? o) => o is InterestsRecord;
}
