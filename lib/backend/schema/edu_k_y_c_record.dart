import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EduKYCRecord extends FirestoreRecord {
  EduKYCRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usn" field.
  String? _usn;
  String get usn => _usn ?? '';
  bool hasUsn() => _usn != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "School_Name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "Grade10_marks" field.
  String? _grade10Marks;
  String get grade10Marks => _grade10Marks ?? '';
  bool hasGrade10Marks() => _grade10Marks != null;

  // "markscard_10" field.
  String? _markscard10;
  String get markscard10 => _markscard10 ?? '';
  bool hasMarkscard10() => _markscard10 != null;

  // "board_10" field.
  String? _board10;
  String get board10 => _board10 ?? '';
  bool hasBoard10() => _board10 != null;

  // "regNum_10" field.
  String? _regNum10;
  String get regNum10 => _regNum10 ?? '';
  bool hasRegNum10() => _regNum10 != null;

  // "cType" field.
  String? _cType;
  String get cType => _cType ?? '';
  bool hasCType() => _cType != null;

  // "cName" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "grade12_marks" field.
  String? _grade12Marks;
  String get grade12Marks => _grade12Marks ?? '';
  bool hasGrade12Marks() => _grade12Marks != null;

  // "board12" field.
  String? _board12;
  String get board12 => _board12 ?? '';
  bool hasBoard12() => _board12 != null;

  // "CregNum" field.
  String? _cregNum;
  String get cregNum => _cregNum ?? '';
  bool hasCregNum() => _cregNum != null;

  // "markscard_12" field.
  String? _markscard12;
  String get markscard12 => _markscard12 ?? '';
  bool hasMarkscard12() => _markscard12 != null;

  void _initializeFields() {
    _usn = snapshotData['usn'] as String?;
    _name = snapshotData['name'] as String?;
    _schoolName = snapshotData['School_Name'] as String?;
    _grade10Marks = snapshotData['Grade10_marks'] as String?;
    _markscard10 = snapshotData['markscard_10'] as String?;
    _board10 = snapshotData['board_10'] as String?;
    _regNum10 = snapshotData['regNum_10'] as String?;
    _cType = snapshotData['cType'] as String?;
    _cName = snapshotData['cName'] as String?;
    _grade12Marks = snapshotData['grade12_marks'] as String?;
    _board12 = snapshotData['board12'] as String?;
    _cregNum = snapshotData['CregNum'] as String?;
    _markscard12 = snapshotData['markscard_12'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('edu_KYC');

  static Stream<EduKYCRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EduKYCRecord.fromSnapshot(s));

  static Future<EduKYCRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EduKYCRecord.fromSnapshot(s));

  static EduKYCRecord fromSnapshot(DocumentSnapshot snapshot) => EduKYCRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EduKYCRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EduKYCRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EduKYCRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEduKYCRecordData({
  String? usn,
  String? name,
  String? schoolName,
  String? grade10Marks,
  String? markscard10,
  String? board10,
  String? regNum10,
  String? cType,
  String? cName,
  String? grade12Marks,
  String? board12,
  String? cregNum,
  String? markscard12,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usn': usn,
      'name': name,
      'School_Name': schoolName,
      'Grade10_marks': grade10Marks,
      'markscard_10': markscard10,
      'board_10': board10,
      'regNum_10': regNum10,
      'cType': cType,
      'cName': cName,
      'grade12_marks': grade12Marks,
      'board12': board12,
      'CregNum': cregNum,
      'markscard_12': markscard12,
    }.withoutNulls,
  );

  return firestoreData;
}
