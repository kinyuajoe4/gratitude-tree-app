import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesRecord extends FirestoreRecord {
  CountriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  bool hasCountryName() => _countryName != null;

  // "selectedCountry" field.
  String? _selectedCountry;
  String get selectedCountry => _selectedCountry ?? '';
  bool hasSelectedCountry() => _selectedCountry != null;

  // "averageAnnualFootprint" field.
  double? _averageAnnualFootprint;
  double get averageAnnualFootprint => _averageAnnualFootprint ?? 0.0;
  bool hasAverageAnnualFootprint() => _averageAnnualFootprint != null;

  void _initializeFields() {
    _countryName = snapshotData['countryName'] as String?;
    _selectedCountry = snapshotData['selectedCountry'] as String?;
    _averageAnnualFootprint =
        castToType<double>(snapshotData['averageAnnualFootprint']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('countries');

  static Stream<CountriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountriesRecord.fromSnapshot(s));

  static Future<CountriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountriesRecord.fromSnapshot(s));

  static CountriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountriesRecordData({
  String? countryName,
  String? selectedCountry,
  double? averageAnnualFootprint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'countryName': countryName,
      'selectedCountry': selectedCountry,
      'averageAnnualFootprint': averageAnnualFootprint,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountriesRecordDocumentEquality implements Equality<CountriesRecord> {
  const CountriesRecordDocumentEquality();

  @override
  bool equals(CountriesRecord? e1, CountriesRecord? e2) {
    return e1?.countryName == e2?.countryName &&
        e1?.selectedCountry == e2?.selectedCountry &&
        e1?.averageAnnualFootprint == e2?.averageAnnualFootprint;
  }

  @override
  int hash(CountriesRecord? e) => const ListEquality()
      .hash([e?.countryName, e?.selectedCountry, e?.averageAnnualFootprint]);

  @override
  bool isValidKey(Object? o) => o is CountriesRecord;
}
