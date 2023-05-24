import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "add_email" field.
  String? _addEmail;
  String get addEmail => _addEmail ?? '';
  bool hasAddEmail() => _addEmail != null;

  // "usn" field.
  String? _usn;
  String get usn => _usn ?? '';
  bool hasUsn() => _usn != null;

  // "selected" field.
  String? _selected;
  String get selected => _selected ?? '';
  bool hasSelected() => _selected != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "cgpa" field.
  String? _cgpa;
  String get cgpa => _cgpa ?? '';
  bool hasCgpa() => _cgpa != null;

  // "PX" field.
  String? _px;
  String get px => _px ?? '';
  bool hasPx() => _px != null;

  // "AX" field.
  String? _ax;
  String get ax => _ax ?? '';
  bool hasAx() => _ax != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _addEmail = snapshotData['add_email'] as String?;
    _usn = snapshotData['usn'] as String?;
    _selected = snapshotData['selected'] as String?;
    _company = snapshotData['company'] as String?;
    _cgpa = snapshotData['cgpa'] as String?;
    _px = snapshotData['PX'] as String?;
    _ax = snapshotData['AX'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? addEmail,
  String? usn,
  String? selected,
  String? company,
  String? cgpa,
  String? px,
  String? ax,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'add_email': addEmail,
      'usn': usn,
      'selected': selected,
      'company': company,
      'cgpa': cgpa,
      'PX': px,
      'AX': ax,
    }.withoutNulls,
  );

  return firestoreData;
}
