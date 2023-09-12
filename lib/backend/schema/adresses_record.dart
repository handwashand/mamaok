import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdressesRecord extends FirestoreRecord {
  AdressesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "LatLon" field.
  LatLng? _latLon;
  LatLng? get latLon => _latLon;
  bool hasLatLon() => _latLon != null;

  // "IDcustomer" field.
  String? _iDcustomer;
  String get iDcustomer => _iDcustomer ?? '';
  bool hasIDcustomer() => _iDcustomer != null;

  // "Comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _adress = snapshotData['Adress'] as String?;
    _latLon = snapshotData['LatLon'] as LatLng?;
    _iDcustomer = snapshotData['IDcustomer'] as String?;
    _comment = snapshotData['Comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Adresses');

  static Stream<AdressesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdressesRecord.fromSnapshot(s));

  static Future<AdressesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdressesRecord.fromSnapshot(s));

  static AdressesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdressesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdressesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdressesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdressesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdressesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdressesRecordData({
  String? adress,
  LatLng? latLon,
  String? iDcustomer,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Adress': adress,
      'LatLon': latLon,
      'IDcustomer': iDcustomer,
      'Comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdressesRecordDocumentEquality implements Equality<AdressesRecord> {
  const AdressesRecordDocumentEquality();

  @override
  bool equals(AdressesRecord? e1, AdressesRecord? e2) {
    return e1?.adress == e2?.adress &&
        e1?.latLon == e2?.latLon &&
        e1?.iDcustomer == e2?.iDcustomer &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(AdressesRecord? e) => const ListEquality()
      .hash([e?.adress, e?.latLon, e?.iDcustomer, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is AdressesRecord;
}
