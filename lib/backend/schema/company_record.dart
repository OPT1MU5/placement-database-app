import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "PX_eligibility" field.
  String? _pXEligibility;
  String get pXEligibility => _pXEligibility ?? '';
  bool hasPXEligibility() => _pXEligibility != null;

  // "A_eligibilty" field.
  String? _aEligibilty;
  String get aEligibilty => _aEligibilty ?? '';
  bool hasAEligibilty() => _aEligibilty != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Rounds" field.
  List<String>? _rounds;
  List<String> get rounds => _rounds ?? const [];
  bool hasRounds() => _rounds != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "selectedStu" field.
  List<String>? _selectedStu;
  List<String> get selectedStu => _selectedStu ?? const [];
  bool hasSelectedStu() => _selectedStu != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _position = snapshotData['position'] as String?;
    _salary = snapshotData['salary'] as String?;
    _type = snapshotData['type'] as String?;
    _location = snapshotData['location'] as String?;
    _pXEligibility = snapshotData['PX_eligibility'] as String?;
    _aEligibilty = snapshotData['A_eligibilty'] as String?;
    _status = snapshotData['Status'] as String?;
    _rounds = getDataList(snapshotData['Rounds']);
    _description = snapshotData['description'] as String?;
    _skills = getDataList(snapshotData['skills']);
    _selectedStu = getDataList(snapshotData['selectedStu']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCompanyRecordData({
  String? name,
  String? position,
  String? salary,
  String? type,
  String? location,
  String? pXEligibility,
  String? aEligibilty,
  String? status,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'position': position,
      'salary': salary,
      'type': type,
      'location': location,
      'PX_eligibility': pXEligibility,
      'A_eligibilty': aEligibilty,
      'Status': status,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}
