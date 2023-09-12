import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CancelCompanipnRecord extends FirestoreRecord {
  CancelCompanipnRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _status = castToType<int>(snapshotData['Status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cancelCompanipn');

  static Stream<CancelCompanipnRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CancelCompanipnRecord.fromSnapshot(s));

  static Future<CancelCompanipnRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CancelCompanipnRecord.fromSnapshot(s));

  static CancelCompanipnRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CancelCompanipnRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CancelCompanipnRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CancelCompanipnRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CancelCompanipnRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CancelCompanipnRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCancelCompanipnRecordData({
  String? name,
  int? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class CancelCompanipnRecordDocumentEquality
    implements Equality<CancelCompanipnRecord> {
  const CancelCompanipnRecordDocumentEquality();

  @override
  bool equals(CancelCompanipnRecord? e1, CancelCompanipnRecord? e2) {
    return e1?.name == e2?.name && e1?.status == e2?.status;
  }

  @override
  int hash(CancelCompanipnRecord? e) =>
      const ListEquality().hash([e?.name, e?.status]);

  @override
  bool isValidKey(Object? o) => o is CancelCompanipnRecord;
}
