import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainInfoRecord extends FirestoreRecord {
  MainInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Raiting" field.
  int? _raiting;
  int get raiting => _raiting ?? 0;
  bool hasRaiting() => _raiting != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _image = snapshotData['Image'] as String?;
    _raiting = castToType<int>(snapshotData['Raiting']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MainInfo');

  static Stream<MainInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MainInfoRecord.fromSnapshot(s));

  static Future<MainInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MainInfoRecord.fromSnapshot(s));

  static MainInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MainInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MainInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MainInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MainInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MainInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMainInfoRecordData({
  String? title,
  String? image,
  int? raiting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Image': image,
      'Raiting': raiting,
    }.withoutNulls,
  );

  return firestoreData;
}

class MainInfoRecordDocumentEquality implements Equality<MainInfoRecord> {
  const MainInfoRecordDocumentEquality();

  @override
  bool equals(MainInfoRecord? e1, MainInfoRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.image == e2?.image &&
        e1?.raiting == e2?.raiting;
  }

  @override
  int hash(MainInfoRecord? e) =>
      const ListEquality().hash([e?.title, e?.image, e?.raiting]);

  @override
  bool isValidKey(Object? o) => o is MainInfoRecord;
}
