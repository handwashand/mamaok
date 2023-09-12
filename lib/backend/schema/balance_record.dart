import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BalanceRecord extends FirestoreRecord {
  BalanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Summ" field.
  int? _summ;
  int get summ => _summ ?? 0;
  bool hasSumm() => _summ != null;

  // "CodePay" field.
  String? _codePay;
  String get codePay => _codePay ?? '';
  bool hasCodePay() => _codePay != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "IDCustomer" field.
  String? _iDCustomer;
  String get iDCustomer => _iDCustomer ?? '';
  bool hasIDCustomer() => _iDCustomer != null;

  // "ZachSpisan" field.
  String? _zachSpisan;
  String get zachSpisan => _zachSpisan ?? '';
  bool hasZachSpisan() => _zachSpisan != null;

  void _initializeFields() {
    _summ = castToType<int>(snapshotData['Summ']);
    _codePay = snapshotData['CodePay'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _iDCustomer = snapshotData['IDCustomer'] as String?;
    _zachSpisan = snapshotData['ZachSpisan'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Balance');

  static Stream<BalanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BalanceRecord.fromSnapshot(s));

  static Future<BalanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BalanceRecord.fromSnapshot(s));

  static BalanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BalanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BalanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BalanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BalanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BalanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBalanceRecordData({
  int? summ,
  String? codePay,
  DateTime? date,
  String? iDCustomer,
  String? zachSpisan,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Summ': summ,
      'CodePay': codePay,
      'Date': date,
      'IDCustomer': iDCustomer,
      'ZachSpisan': zachSpisan,
    }.withoutNulls,
  );

  return firestoreData;
}

class BalanceRecordDocumentEquality implements Equality<BalanceRecord> {
  const BalanceRecordDocumentEquality();

  @override
  bool equals(BalanceRecord? e1, BalanceRecord? e2) {
    return e1?.summ == e2?.summ &&
        e1?.codePay == e2?.codePay &&
        e1?.date == e2?.date &&
        e1?.iDCustomer == e2?.iDCustomer &&
        e1?.zachSpisan == e2?.zachSpisan;
  }

  @override
  int hash(BalanceRecord? e) => const ListEquality()
      .hash([e?.summ, e?.codePay, e?.date, e?.iDCustomer, e?.zachSpisan]);

  @override
  bool isValidKey(Object? o) => o is BalanceRecord;
}
