import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreeLibraryRecord extends FirestoreRecord {
  TreeLibraryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treeName" field.
  String? _treeName;
  String get treeName => _treeName ?? '';
  bool hasTreeName() => _treeName != null;

  // "treeImage" field.
  String? _treeImage;
  String get treeImage => _treeImage ?? '';
  bool hasTreeImage() => _treeImage != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _treeName = snapshotData['treeName'] as String?;
    _treeImage = snapshotData['treeImage'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treeLibrary');

  static Stream<TreeLibraryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreeLibraryRecord.fromSnapshot(s));

  static Future<TreeLibraryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreeLibraryRecord.fromSnapshot(s));

  static TreeLibraryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreeLibraryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreeLibraryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreeLibraryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreeLibraryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreeLibraryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreeLibraryRecordData({
  String? treeName,
  String? treeImage,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treeName': treeName,
      'treeImage': treeImage,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreeLibraryRecordDocumentEquality implements Equality<TreeLibraryRecord> {
  const TreeLibraryRecordDocumentEquality();

  @override
  bool equals(TreeLibraryRecord? e1, TreeLibraryRecord? e2) {
    return e1?.treeName == e2?.treeName &&
        e1?.treeImage == e2?.treeImage &&
        e1?.description == e2?.description;
  }

  @override
  int hash(TreeLibraryRecord? e) =>
      const ListEquality().hash([e?.treeName, e?.treeImage, e?.description]);

  @override
  bool isValidKey(Object? o) => o is TreeLibraryRecord;
}
