import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appointmentName" field.
  String? _appointmentName;
  String get appointmentName => _appointmentName ?? '';
  bool hasAppointmentName() => _appointmentName != null;

  // "appointmentDescription" field.
  String? _appointmentDescription;
  String get appointmentDescription => _appointmentDescription ?? '';
  bool hasAppointmentDescription() => _appointmentDescription != null;

  // "appointmentPerson" field.
  DocumentReference? _appointmentPerson;
  DocumentReference? get appointmentPerson => _appointmentPerson;
  bool hasAppointmentPerson() => _appointmentPerson != null;

  // "appointmentTime" field.
  DateTime? _appointmentTime;
  DateTime? get appointmentTime => _appointmentTime;
  bool hasAppointmentTime() => _appointmentTime != null;

  // "appointmentType" field.
  String? _appointmentType;
  String get appointmentType => _appointmentType ?? '';
  bool hasAppointmentType() => _appointmentType != null;

  // "appointmentEmail" field.
  String? _appointmentEmail;
  String get appointmentEmail => _appointmentEmail ?? '';
  bool hasAppointmentEmail() => _appointmentEmail != null;

  // "LocationofTree" field.
  String? _locationofTree;
  String get locationofTree => _locationofTree ?? '';
  bool hasLocationofTree() => _locationofTree != null;

  // "treeImage" field.
  String? _treeImage;
  String get treeImage => _treeImage ?? '';
  bool hasTreeImage() => _treeImage != null;

  // "donor" field.
  String? _donor;
  String get donor => _donor ?? '';
  bool hasDonor() => _donor != null;

  // "nextVisit" field.
  DateTime? _nextVisit;
  DateTime? get nextVisit => _nextVisit;
  bool hasNextVisit() => _nextVisit != null;

  // "field_Owner" field.
  String? _fieldOwner;
  String get fieldOwner => _fieldOwner ?? '';
  bool hasFieldOwner() => _fieldOwner != null;

  // "field_name" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  bool hasFieldName() => _fieldName != null;

  // "latitudeLongitude" field.
  LatLng? _latitudeLongitude;
  LatLng? get latitudeLongitude => _latitudeLongitude;
  bool hasLatitudeLongitude() => _latitudeLongitude != null;

  // "ageinMnths" field.
  int? _ageinMnths;
  int get ageinMnths => _ageinMnths ?? 0;
  bool hasAgeinMnths() => _ageinMnths != null;

  // "treeStatus" field.
  String? _treeStatus;
  String get treeStatus => _treeStatus ?? '';
  bool hasTreeStatus() => _treeStatus != null;

  // "ageinYrs" field.
  double? _ageinYrs;
  double get ageinYrs => _ageinYrs ?? 0.0;
  bool hasAgeinYrs() => _ageinYrs != null;

  void _initializeFields() {
    _appointmentName = snapshotData['appointmentName'] as String?;
    _appointmentDescription = snapshotData['appointmentDescription'] as String?;
    _appointmentPerson =
        snapshotData['appointmentPerson'] as DocumentReference?;
    _appointmentTime = snapshotData['appointmentTime'] as DateTime?;
    _appointmentType = snapshotData['appointmentType'] as String?;
    _appointmentEmail = snapshotData['appointmentEmail'] as String?;
    _locationofTree = snapshotData['LocationofTree'] as String?;
    _treeImage = snapshotData['treeImage'] as String?;
    _donor = snapshotData['donor'] as String?;
    _nextVisit = snapshotData['nextVisit'] as DateTime?;
    _fieldOwner = snapshotData['field_Owner'] as String?;
    _fieldName = snapshotData['field_name'] as String?;
    _latitudeLongitude = snapshotData['latitudeLongitude'] as LatLng?;
    _ageinMnths = castToType<int>(snapshotData['ageinMnths']);
    _treeStatus = snapshotData['treeStatus'] as String?;
    _ageinYrs = castToType<double>(snapshotData['ageinYrs']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  String? appointmentName,
  String? appointmentDescription,
  DocumentReference? appointmentPerson,
  DateTime? appointmentTime,
  String? appointmentType,
  String? appointmentEmail,
  String? locationofTree,
  String? treeImage,
  String? donor,
  DateTime? nextVisit,
  String? fieldOwner,
  String? fieldName,
  LatLng? latitudeLongitude,
  int? ageinMnths,
  String? treeStatus,
  double? ageinYrs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appointmentName': appointmentName,
      'appointmentDescription': appointmentDescription,
      'appointmentPerson': appointmentPerson,
      'appointmentTime': appointmentTime,
      'appointmentType': appointmentType,
      'appointmentEmail': appointmentEmail,
      'LocationofTree': locationofTree,
      'treeImage': treeImage,
      'donor': donor,
      'nextVisit': nextVisit,
      'field_Owner': fieldOwner,
      'field_name': fieldName,
      'latitudeLongitude': latitudeLongitude,
      'ageinMnths': ageinMnths,
      'treeStatus': treeStatus,
      'ageinYrs': ageinYrs,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    return e1?.appointmentName == e2?.appointmentName &&
        e1?.appointmentDescription == e2?.appointmentDescription &&
        e1?.appointmentPerson == e2?.appointmentPerson &&
        e1?.appointmentTime == e2?.appointmentTime &&
        e1?.appointmentType == e2?.appointmentType &&
        e1?.appointmentEmail == e2?.appointmentEmail &&
        e1?.locationofTree == e2?.locationofTree &&
        e1?.treeImage == e2?.treeImage &&
        e1?.donor == e2?.donor &&
        e1?.nextVisit == e2?.nextVisit &&
        e1?.fieldOwner == e2?.fieldOwner &&
        e1?.fieldName == e2?.fieldName &&
        e1?.latitudeLongitude == e2?.latitudeLongitude &&
        e1?.ageinMnths == e2?.ageinMnths &&
        e1?.treeStatus == e2?.treeStatus &&
        e1?.ageinYrs == e2?.ageinYrs;
  }

  @override
  int hash(AppointmentsRecord? e) => const ListEquality().hash([
        e?.appointmentName,
        e?.appointmentDescription,
        e?.appointmentPerson,
        e?.appointmentTime,
        e?.appointmentType,
        e?.appointmentEmail,
        e?.locationofTree,
        e?.treeImage,
        e?.donor,
        e?.nextVisit,
        e?.fieldOwner,
        e?.fieldName,
        e?.latitudeLongitude,
        e?.ageinMnths,
        e?.treeStatus,
        e?.ageinYrs
      ]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
