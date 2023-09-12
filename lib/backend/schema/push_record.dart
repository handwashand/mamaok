import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PushRecord extends FirestoreRecord {
  PushRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Head" field.
  String? _head;
  String get head => _head ?? '';
  bool hasHead() => _head != null;

  // "Text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  // "Read" field.
  String? _read;
  String get read => _read ?? '';
  bool hasRead() => _read != null;

  // "IdUser" field.
  List<DocumentReference>? _idUser;
  List<DocumentReference> get idUser => _idUser ?? const [];
  bool hasIdUser() => _idUser != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _head = snapshotData['Head'] as String?;
    _text = snapshotData['Text'] as String?;
    _image = snapshotData['Image'] as String?;
    _number = castToType<int>(snapshotData['Number']);
    _read = snapshotData['Read'] as String?;
    _idUser = getDataList(snapshotData['IdUser']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Push');

  static Stream<PushRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PushRecord.fromSnapshot(s));

  static Future<PushRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PushRecord.fromSnapshot(s));

  static PushRecord fromSnapshot(DocumentSnapshot snapshot) => PushRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PushRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PushRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PushRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PushRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPushRecordData({
  DateTime? date,
  String? head,
  String? text,
  String? image,
  int? number,
  String? read,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Head': head,
      'Text': text,
      'Image': image,
      'Number': number,
      'Read': read,
    }.withoutNulls,
  );

  return firestoreData;
}

class PushRecordDocumentEquality implements Equality<PushRecord> {
  const PushRecordDocumentEquality();

  @override
  bool equals(PushRecord? e1, PushRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.head == e2?.head &&
        e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.number == e2?.number &&
        e1?.read == e2?.read &&
        listEquality.equals(e1?.idUser, e2?.idUser);
  }

  @override
  int hash(PushRecord? e) => const ListEquality().hash(
      [e?.date, e?.head, e?.text, e?.image, e?.number, e?.read, e?.idUser]);

  @override
  bool isValidKey(Object? o) => o is PushRecord;
}
