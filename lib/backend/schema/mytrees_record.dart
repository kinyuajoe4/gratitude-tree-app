import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MytreesRecord extends FirestoreRecord {
  MytreesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tree_Name" field.
  String? _treeName;
  String get treeName => _treeName ?? '';
  bool hasTreeName() => _treeName != null;

  // "tree_Owner" field.
  DocumentReference? _treeOwner;
  DocumentReference? get treeOwner => _treeOwner;
  bool hasTreeOwner() => _treeOwner != null;

  // "date_ofPlanting" field.
  DateTime? _dateOfPlanting;
  DateTime? get dateOfPlanting => _dateOfPlanting;
  bool hasDateOfPlanting() => _dateOfPlanting != null;

  // "species_Type" field.
  String? _speciesType;
  String get speciesType => _speciesType ?? '';
  bool hasSpeciesType() => _speciesType != null;

  // "tree_Image" field.
  String? _treeImage;
  String get treeImage => _treeImage ?? '';
  bool hasTreeImage() => _treeImage != null;

  // "donor" field.
  String? _donor;
  String get donor => _donor ?? '';
  bool hasDonor() => _donor != null;

  // "next_Visit" field.
  DateTime? _nextVisit;
  DateTime? get nextVisit => _nextVisit;
  bool hasNextVisit() => _nextVisit != null;

  // "latitude_longitude" field.
  LatLng? _latitudeLongitude;
  LatLng? get latitudeLongitude => _latitudeLongitude;
  bool hasLatitudeLongitude() => _latitudeLongitude != null;

  // "agein_mths" field.
  int? _ageinMths;
  int get ageinMths => _ageinMths ?? 0;
  bool hasAgeinMths() => _ageinMths != null;

  // "agein_yrs" field.
  double? _ageinYrs;
  double get ageinYrs => _ageinYrs ?? 0.0;
  bool hasAgeinYrs() => _ageinYrs != null;

  // "treeOwnerName" field.
  String? _treeOwnerName;
  String get treeOwnerName => _treeOwnerName ?? '';
  bool hasTreeOwnerName() => _treeOwnerName != null;

  // "fieldName" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  bool hasFieldName() => _fieldName != null;

  // "treeStatus" field.
  String? _treeStatus;
  String get treeStatus => _treeStatus ?? '';
  bool hasTreeStatus() => _treeStatus != null;

  // "visitStatus" field.
  bool? _visitStatus;
  bool get visitStatus => _visitStatus ?? false;
  bool hasVisitStatus() => _visitStatus != null;

  // "carbonabsorbed" field.
  double? _carbonabsorbed;
  double get carbonabsorbed => _carbonabsorbed ?? 0.0;
  bool hasCarbonabsorbed() => _carbonabsorbed != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _treeName = snapshotData['tree_Name'] as String?;
    _treeOwner = snapshotData['tree_Owner'] as DocumentReference?;
    _dateOfPlanting = snapshotData['date_ofPlanting'] as DateTime?;
    _speciesType = snapshotData['species_Type'] as String?;
    _treeImage = snapshotData['tree_Image'] as String?;
    _donor = snapshotData['donor'] as String?;
    _nextVisit = snapshotData['next_Visit'] as DateTime?;
    _latitudeLongitude = snapshotData['latitude_longitude'] as LatLng?;
    _ageinMths = castToType<int>(snapshotData['agein_mths']);
    _ageinYrs = castToType<double>(snapshotData['agein_yrs']);
    _treeOwnerName = snapshotData['treeOwnerName'] as String?;
    _fieldName = snapshotData['fieldName'] as String?;
    _treeStatus = snapshotData['treeStatus'] as String?;
    _visitStatus = snapshotData['visitStatus'] as bool?;
    _carbonabsorbed = castToType<double>(snapshotData['carbonabsorbed']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mytrees')
          : FirebaseFirestore.instance.collectionGroup('mytrees');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('mytrees').doc(id);

  static Stream<MytreesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MytreesRecord.fromSnapshot(s));

  static Future<MytreesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MytreesRecord.fromSnapshot(s));

  static MytreesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MytreesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MytreesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MytreesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MytreesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MytreesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMytreesRecordData({
  String? treeName,
  DocumentReference? treeOwner,
  DateTime? dateOfPlanting,
  String? speciesType,
  String? treeImage,
  String? donor,
  DateTime? nextVisit,
  LatLng? latitudeLongitude,
  int? ageinMths,
  double? ageinYrs,
  String? treeOwnerName,
  String? fieldName,
  String? treeStatus,
  bool? visitStatus,
  double? carbonabsorbed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tree_Name': treeName,
      'tree_Owner': treeOwner,
      'date_ofPlanting': dateOfPlanting,
      'species_Type': speciesType,
      'tree_Image': treeImage,
      'donor': donor,
      'next_Visit': nextVisit,
      'latitude_longitude': latitudeLongitude,
      'agein_mths': ageinMths,
      'agein_yrs': ageinYrs,
      'treeOwnerName': treeOwnerName,
      'fieldName': fieldName,
      'treeStatus': treeStatus,
      'visitStatus': visitStatus,
      'carbonabsorbed': carbonabsorbed,
    }.withoutNulls,
  );

  return firestoreData;
}

class MytreesRecordDocumentEquality implements Equality<MytreesRecord> {
  const MytreesRecordDocumentEquality();

  @override
  bool equals(MytreesRecord? e1, MytreesRecord? e2) {
    return e1?.treeName == e2?.treeName &&
        e1?.treeOwner == e2?.treeOwner &&
        e1?.dateOfPlanting == e2?.dateOfPlanting &&
        e1?.speciesType == e2?.speciesType &&
        e1?.treeImage == e2?.treeImage &&
        e1?.donor == e2?.donor &&
        e1?.nextVisit == e2?.nextVisit &&
        e1?.latitudeLongitude == e2?.latitudeLongitude &&
        e1?.ageinMths == e2?.ageinMths &&
        e1?.ageinYrs == e2?.ageinYrs &&
        e1?.treeOwnerName == e2?.treeOwnerName &&
        e1?.fieldName == e2?.fieldName &&
        e1?.treeStatus == e2?.treeStatus &&
        e1?.visitStatus == e2?.visitStatus &&
        e1?.carbonabsorbed == e2?.carbonabsorbed;
  }

  @override
  int hash(MytreesRecord? e) => const ListEquality().hash([
        e?.treeName,
        e?.treeOwner,
        e?.dateOfPlanting,
        e?.speciesType,
        e?.treeImage,
        e?.donor,
        e?.nextVisit,
        e?.latitudeLongitude,
        e?.ageinMths,
        e?.ageinYrs,
        e?.treeOwnerName,
        e?.fieldName,
        e?.treeStatus,
        e?.visitStatus,
        e?.carbonabsorbed
      ]);

  @override
  bool isValidKey(Object? o) => o is MytreesRecord;
}
