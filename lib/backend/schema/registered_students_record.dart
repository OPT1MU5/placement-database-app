import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegisteredStudentsRecord extends FirestoreRecord {
  RegisteredStudentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "companyN" field.
  String? _companyN;
  String get companyN => _companyN ?? '';
  bool hasCompanyN() => _companyN != null;

  // "usn" field.
  String? _usn;
  String get usn => _usn ?? '';
  bool hasUsn() => _usn != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _companyN = snapshotData['companyN'] as String?;
    _usn = snapshotData['usn'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registered_students');

  static Stream<RegisteredStudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegisteredStudentsRecord.fromSnapshot(s));

  static Future<RegisteredStudentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegisteredStudentsRecord.fromSnapshot(s));

  static RegisteredStudentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegisteredStudentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegisteredStudentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegisteredStudentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegisteredStudentsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRegisteredStudentsRecordData({
  String? email,
  String? displayName,
  String? phoneNumber,
  String? companyN,
  String? usn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'companyN': companyN,
      'usn': usn,
    }.withoutNulls,
  );

  return firestoreData;
}
