import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceListRecord extends FirestoreRecord {
  PriceListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Desciption" field.
  String? _desciption;
  String get desciption => _desciption ?? '';
  bool hasDesciption() => _desciption != null;

  // "FullDescription" field.
  String? _fullDescription;
  String get fullDescription => _fullDescription ?? '';
  bool hasFullDescription() => _fullDescription != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "Count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "OneMeet" field.
  int? _oneMeet;
  int get oneMeet => _oneMeet ?? 0;
  bool hasOneMeet() => _oneMeet != null;

  // "Raiting" field.
  int? _raiting;
  int get raiting => _raiting ?? 0;
  bool hasRaiting() => _raiting != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _desciption = snapshotData['Desciption'] as String?;
    _fullDescription = snapshotData['FullDescription'] as String?;
    _image = snapshotData['Image'] as String?;
    _price = castToType<int>(snapshotData['Price']);
    _count = castToType<int>(snapshotData['Count']);
    _oneMeet = castToType<int>(snapshotData['OneMeet']);
    _raiting = castToType<int>(snapshotData['Raiting']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PriceList');

  static Stream<PriceListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriceListRecord.fromSnapshot(s));

  static Future<PriceListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriceListRecord.fromSnapshot(s));

  static PriceListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PriceListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriceListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriceListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriceListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriceListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriceListRecordData({
  String? name,
  String? desciption,
  String? fullDescription,
  String? image,
  int? price,
  int? count,
  int? oneMeet,
  int? raiting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Desciption': desciption,
      'FullDescription': fullDescription,
      'Image': image,
      'Price': price,
      'Count': count,
      'OneMeet': oneMeet,
      'Raiting': raiting,
    }.withoutNulls,
  );

  return firestoreData;
}

class PriceListRecordDocumentEquality implements Equality<PriceListRecord> {
  const PriceListRecordDocumentEquality();

  @override
  bool equals(PriceListRecord? e1, PriceListRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.desciption == e2?.desciption &&
        e1?.fullDescription == e2?.fullDescription &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.count == e2?.count &&
        e1?.oneMeet == e2?.oneMeet &&
        e1?.raiting == e2?.raiting;
  }

  @override
  int hash(PriceListRecord? e) => const ListEquality().hash([
        e?.name,
        e?.desciption,
        e?.fullDescription,
        e?.image,
        e?.price,
        e?.count,
        e?.oneMeet,
        e?.raiting
      ]);

  @override
  bool isValidKey(Object? o) => o is PriceListRecord;
}
