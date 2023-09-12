import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricingPointRecord extends FirestoreRecord {
  PricingPointRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tariff" field.
  String? _tariff;
  String get tariff => _tariff ?? '';
  bool hasTariff() => _tariff != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Raiting" field.
  int? _raiting;
  int get raiting => _raiting ?? 0;
  bool hasRaiting() => _raiting != null;

  void _initializeFields() {
    _tariff = snapshotData['tariff'] as String?;
    _description = snapshotData['Description'] as String?;
    _raiting = castToType<int>(snapshotData['Raiting']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PricingPoint');

  static Stream<PricingPointRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricingPointRecord.fromSnapshot(s));

  static Future<PricingPointRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricingPointRecord.fromSnapshot(s));

  static PricingPointRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricingPointRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricingPointRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricingPointRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricingPointRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricingPointRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricingPointRecordData({
  String? tariff,
  String? description,
  int? raiting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tariff': tariff,
      'Description': description,
      'Raiting': raiting,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricingPointRecordDocumentEquality
    implements Equality<PricingPointRecord> {
  const PricingPointRecordDocumentEquality();

  @override
  bool equals(PricingPointRecord? e1, PricingPointRecord? e2) {
    return e1?.tariff == e2?.tariff &&
        e1?.description == e2?.description &&
        e1?.raiting == e2?.raiting;
  }

  @override
  int hash(PricingPointRecord? e) =>
      const ListEquality().hash([e?.tariff, e?.description, e?.raiting]);

  @override
  bool isValidKey(Object? o) => o is PricingPointRecord;
}
