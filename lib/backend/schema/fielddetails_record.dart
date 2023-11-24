import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FielddetailsRecord extends FirestoreRecord {
  FielddetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fieldname" field.
  String? _fieldname;
  String get fieldname => _fieldname ?? '';
  bool hasFieldname() => _fieldname != null;

  // "fieldsize" field.
  String? _fieldsize;
  String get fieldsize => _fieldsize ?? '';
  bool hasFieldsize() => _fieldsize != null;

  // "numberoftrees" field.
  int? _numberoftrees;
  int get numberoftrees => _numberoftrees ?? 0;
  bool hasNumberoftrees() => _numberoftrees != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "fieldowner" field.
  String? _fieldowner;
  String get fieldowner => _fieldowner ?? '';
  bool hasFieldowner() => _fieldowner != null;

  // "fielduser" field.
  DocumentReference? _fielduser;
  DocumentReference? get fielduser => _fielduser;
  bool hasFielduser() => _fielduser != null;

  void _initializeFields() {
    _fieldname = snapshotData['fieldname'] as String?;
    _fieldsize = snapshotData['fieldsize'] as String?;
    _numberoftrees = castToType<int>(snapshotData['numberoftrees']);
    _location = snapshotData['location'] as LatLng?;
    _fieldowner = snapshotData['fieldowner'] as String?;
    _fielduser = snapshotData['fielduser'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fielddetails');

  static Stream<FielddetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FielddetailsRecord.fromSnapshot(s));

  static Future<FielddetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FielddetailsRecord.fromSnapshot(s));

  static FielddetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FielddetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FielddetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FielddetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FielddetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FielddetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFielddetailsRecordData({
  String? fieldname,
  String? fieldsize,
  int? numberoftrees,
  LatLng? location,
  String? fieldowner,
  DocumentReference? fielduser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fieldname': fieldname,
      'fieldsize': fieldsize,
      'numberoftrees': numberoftrees,
      'location': location,
      'fieldowner': fieldowner,
      'fielduser': fielduser,
    }.withoutNulls,
  );

  return firestoreData;
}

class FielddetailsRecordDocumentEquality
    implements Equality<FielddetailsRecord> {
  const FielddetailsRecordDocumentEquality();

  @override
  bool equals(FielddetailsRecord? e1, FielddetailsRecord? e2) {
    return e1?.fieldname == e2?.fieldname &&
        e1?.fieldsize == e2?.fieldsize &&
        e1?.numberoftrees == e2?.numberoftrees &&
        e1?.location == e2?.location &&
        e1?.fieldowner == e2?.fieldowner &&
        e1?.fielduser == e2?.fielduser;
  }

  @override
  int hash(FielddetailsRecord? e) => const ListEquality().hash([
        e?.fieldname,
        e?.fieldsize,
        e?.numberoftrees,
        e?.location,
        e?.fieldowner,
        e?.fielduser
      ]);

  @override
  bool isValidKey(Object? o) => o is FielddetailsRecord;
}
