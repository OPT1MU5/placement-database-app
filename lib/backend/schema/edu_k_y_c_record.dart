import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'edu_k_y_c_record.g.dart';

abstract class EduKYCRecord
    implements Built<EduKYCRecord, EduKYCRecordBuilder> {
  static Serializer<EduKYCRecord> get serializer => _$eduKYCRecordSerializer;

  String? get usn;

  String? get name;

  @BuiltValueField(wireName: 'School_Name')
  String? get schoolName;

  @BuiltValueField(wireName: 'Grade10_marks')
  String? get grade10Marks;

  @BuiltValueField(wireName: 'markscard_10')
  String? get markscard10;

  @BuiltValueField(wireName: 'board_10')
  String? get board10;

  @BuiltValueField(wireName: 'regNum_10')
  String? get regNum10;

  String? get cType;

  String? get cName;

  @BuiltValueField(wireName: 'grade12_marks')
  String? get grade12Marks;

  String? get board12;

  @BuiltValueField(wireName: 'CregNum')
  String? get cregNum;

  @BuiltValueField(wireName: 'markscard_12')
  String? get markscard12;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EduKYCRecordBuilder builder) => builder
    ..usn = ''
    ..name = ''
    ..schoolName = ''
    ..grade10Marks = ''
    ..markscard10 = ''
    ..board10 = ''
    ..regNum10 = ''
    ..cType = ''
    ..cName = ''
    ..grade12Marks = ''
    ..board12 = ''
    ..cregNum = ''
    ..markscard12 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('edu_KYC');

  static Stream<EduKYCRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EduKYCRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EduKYCRecord._();
  factory EduKYCRecord([void Function(EduKYCRecordBuilder) updates]) =
      _$EduKYCRecord;

  static EduKYCRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    EduKYCRecord.serializer,
    EduKYCRecord(
      (e) => e
        ..usn = usn
        ..name = name
        ..schoolName = schoolName
        ..grade10Marks = grade10Marks
        ..markscard10 = markscard10
        ..board10 = board10
        ..regNum10 = regNum10
        ..cType = cType
        ..cName = cName
        ..grade12Marks = grade12Marks
        ..board12 = board12
        ..cregNum = cregNum
        ..markscard12 = markscard12,
    ),
  );

  return firestoreData;
}
