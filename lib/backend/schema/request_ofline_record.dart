import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestOflineRecord extends FirestoreRecord {
  RequestOflineRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Family" field.
  String? _family;
  String get family => _family ?? '';
  bool hasFamily() => _family != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "IDcustomer" field.
  DocumentReference? _iDcustomer;
  DocumentReference? get iDcustomer => _iDcustomer;
  bool hasIDcustomer() => _iDcustomer != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _family = snapshotData['Family'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _iDcustomer = snapshotData['IDcustomer'] as DocumentReference?;
    _date = snapshotData['Date'] as DateTime?;
    _city = snapshotData['City'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RequestOfline');

  static Stream<RequestOflineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestOflineRecord.fromSnapshot(s));

  static Future<RequestOflineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestOflineRecord.fromSnapshot(s));

  static RequestOflineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestOflineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestOflineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestOflineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestOflineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestOflineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestOflineRecordData({
  String? name,
  String? family,
  String? phone,
  DocumentReference? iDcustomer,
  DateTime? date,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Family': family,
      'Phone': phone,
      'IDcustomer': iDcustomer,
      'Date': date,
      'City': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestOflineRecordDocumentEquality
    implements Equality<RequestOflineRecord> {
  const RequestOflineRecordDocumentEquality();

  @override
  bool equals(RequestOflineRecord? e1, RequestOflineRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.family == e2?.family &&
        e1?.phone == e2?.phone &&
        e1?.iDcustomer == e2?.iDcustomer &&
        e1?.date == e2?.date &&
        e1?.city == e2?.city;
  }

  @override
  int hash(RequestOflineRecord? e) => const ListEquality()
      .hash([e?.name, e?.family, e?.phone, e?.iDcustomer, e?.date, e?.city]);

  @override
  bool isValidKey(Object? o) => o is RequestOflineRecord;
}
