import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarifsCustomerRecord extends FirestoreRecord {
  TarifsCustomerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "DateCreate" field.
  DateTime? _dateCreate;
  DateTime? get dateCreate => _dateCreate;
  bool hasDateCreate() => _dateCreate != null;

  // "Count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "IDCustomer" field.
  String? _iDCustomer;
  String get iDCustomer => _iDCustomer ?? '';
  bool hasIDCustomer() => _iDCustomer != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "NomberMeet" field.
  List<int>? _nomberMeet;
  List<int> get nomberMeet => _nomberMeet ?? const [];
  bool hasNomberMeet() => _nomberMeet != null;

  // "UidTarif" field.
  int? _uidTarif;
  int get uidTarif => _uidTarif ?? 0;
  bool hasUidTarif() => _uidTarif != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _dateCreate = snapshotData['DateCreate'] as DateTime?;
    _count = castToType<int>(snapshotData['Count']);
    _iDCustomer = snapshotData['IDCustomer'] as String?;
    _description = snapshotData['Description'] as String?;
    _image = snapshotData['Image'] as String?;
    _nomberMeet = getDataList(snapshotData['NomberMeet']);
    _uidTarif = castToType<int>(snapshotData['UidTarif']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TarifsCustomer');

  static Stream<TarifsCustomerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarifsCustomerRecord.fromSnapshot(s));

  static Future<TarifsCustomerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarifsCustomerRecord.fromSnapshot(s));

  static TarifsCustomerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarifsCustomerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarifsCustomerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarifsCustomerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarifsCustomerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarifsCustomerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarifsCustomerRecordData({
  String? name,
  DateTime? dateCreate,
  int? count,
  String? iDCustomer,
  String? description,
  String? image,
  int? uidTarif,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'DateCreate': dateCreate,
      'Count': count,
      'IDCustomer': iDCustomer,
      'Description': description,
      'Image': image,
      'UidTarif': uidTarif,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarifsCustomerRecordDocumentEquality
    implements Equality<TarifsCustomerRecord> {
  const TarifsCustomerRecordDocumentEquality();

  @override
  bool equals(TarifsCustomerRecord? e1, TarifsCustomerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.dateCreate == e2?.dateCreate &&
        e1?.count == e2?.count &&
        e1?.iDCustomer == e2?.iDCustomer &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.nomberMeet, e2?.nomberMeet) &&
        e1?.uidTarif == e2?.uidTarif;
  }

  @override
  int hash(TarifsCustomerRecord? e) => const ListEquality().hash([
        e?.name,
        e?.dateCreate,
        e?.count,
        e?.iDCustomer,
        e?.description,
        e?.image,
        e?.nomberMeet,
        e?.uidTarif
      ]);

  @override
  bool isValidKey(Object? o) => o is TarifsCustomerRecord;
}
