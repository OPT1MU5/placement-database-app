import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'registered_students_record.g.dart';

abstract class RegisteredStudentsRecord
    implements
        Built<RegisteredStudentsRecord, RegisteredStudentsRecordBuilder> {
  static Serializer<RegisteredStudentsRecord> get serializer =>
      _$registeredStudentsRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get companyN;

  String? get usn;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RegisteredStudentsRecordBuilder builder) =>
      builder
        ..email = ''
        ..displayName = ''
        ..phoneNumber = ''
        ..companyN = ''
        ..usn = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registered_students');

  static Stream<RegisteredStudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RegisteredStudentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RegisteredStudentsRecord._();
  factory RegisteredStudentsRecord(
          [void Function(RegisteredStudentsRecordBuilder) updates]) =
      _$RegisteredStudentsRecord;

  static RegisteredStudentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRegisteredStudentsRecordData({
  String? email,
  String? displayName,
  String? phoneNumber,
  String? companyN,
  String? usn,
}) {
  final firestoreData = serializers.toFirestore(
    RegisteredStudentsRecord.serializer,
    RegisteredStudentsRecord(
      (r) => r
        ..email = email
        ..displayName = displayName
        ..phoneNumber = phoneNumber
        ..companyN = companyN
        ..usn = usn,
    ),
  );

  return firestoreData;
}
