import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EligibilityRecord extends FirestoreRecord {
  EligibilityRecord._(
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

  // "cpga" field.
  String? _cpga;
  String get cpga => _cpga ?? '';
  bool hasCpga() => _cpga != null;

  // "sem1" field.
  String? _sem1;
  String get sem1 => _sem1 ?? '';
  bool hasSem1() => _sem1 != null;

  // "sem2" field.
  String? _sem2;
  String get sem2 => _sem2 ?? '';
  bool hasSem2() => _sem2 != null;

  // "sem3" field.
  String? _sem3;
  String get sem3 => _sem3 ?? '';
  bool hasSem3() => _sem3 != null;

  // "sem4" field.
  String? _sem4;
  String get sem4 => _sem4 ?? '';
  bool hasSem4() => _sem4 != null;

  // "sem5" field.
  String? _sem5;
  String get sem5 => _sem5 ?? '';
  bool hasSem5() => _sem5 != null;

  // "sem6" field.
  String? _sem6;
  String get sem6 => _sem6 ?? '';
  bool hasSem6() => _sem6 != null;

  // "sem7" field.
  String? _sem7;
  String get sem7 => _sem7 ?? '';
  bool hasSem7() => _sem7 != null;

  // "eligible" field.
  String? _eligible;
  String get eligible => _eligible ?? '';
  bool hasEligible() => _eligible != null;

  // "PXresult" field.
  String? _pXresult;
  String get pXresult => _pXresult ?? '';
  bool hasPXresult() => _pXresult != null;

  // "AXresult" field.
  String? _aXresult;
  String get aXresult => _aXresult ?? '';
  bool hasAXresult() => _aXresult != null;

  void _initializeFields() {
    _usn = snapshotData['usn'] as String?;
    _name = snapshotData['name'] as String?;
    _cpga = snapshotData['cpga'] as String?;
    _sem1 = snapshotData['sem1'] as String?;
    _sem2 = snapshotData['sem2'] as String?;
    _sem3 = snapshotData['sem3'] as String?;
    _sem4 = snapshotData['sem4'] as String?;
    _sem5 = snapshotData['sem5'] as String?;
    _sem6 = snapshotData['sem6'] as String?;
    _sem7 = snapshotData['sem7'] as String?;
    _eligible = snapshotData['eligible'] as String?;
    _pXresult = snapshotData['PXresult'] as String?;
    _aXresult = snapshotData['AXresult'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eligibility');

  static Stream<EligibilityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EligibilityRecord.fromSnapshot(s));

  static Future<EligibilityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EligibilityRecord.fromSnapshot(s));

  static EligibilityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EligibilityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EligibilityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EligibilityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EligibilityRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEligibilityRecordData({
  String? usn,
  String? name,
  String? cpga,
  String? sem1,
  String? sem2,
  String? sem3,
  String? sem4,
  String? sem5,
  String? sem6,
  String? sem7,
  String? eligible,
  String? pXresult,
  String? aXresult,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usn': usn,
      'name': name,
      'cpga': cpga,
      'sem1': sem1,
      'sem2': sem2,
      'sem3': sem3,
      'sem4': sem4,
      'sem5': sem5,
      'sem6': sem6,
      'sem7': sem7,
      'eligible': eligible,
      'PXresult': pXresult,
      'AXresult': aXresult,
    }.withoutNulls,
  );

  return firestoreData;
}
