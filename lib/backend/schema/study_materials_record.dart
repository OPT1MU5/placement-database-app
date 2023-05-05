import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'study_materials_record.g.dart';

abstract class StudyMaterialsRecord
    implements Built<StudyMaterialsRecord, StudyMaterialsRecordBuilder> {
  static Serializer<StudyMaterialsRecord> get serializer =>
      _$studyMaterialsRecordSerializer;

  String? get topic;

  String? get pdf;

  String? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudyMaterialsRecordBuilder builder) => builder
    ..topic = ''
    ..pdf = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('study_materials');

  static Stream<StudyMaterialsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudyMaterialsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudyMaterialsRecord._();
  factory StudyMaterialsRecord(
          [void Function(StudyMaterialsRecordBuilder) updates]) =
      _$StudyMaterialsRecord;

  static StudyMaterialsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudyMaterialsRecordData({
  String? topic,
  String? pdf,
  String? type,
}) {
  final firestoreData = serializers.toFirestore(
    StudyMaterialsRecord.serializer,
    StudyMaterialsRecord(
      (s) => s
        ..topic = topic
        ..pdf = pdf
        ..type = type,
    ),
  );

  return firestoreData;
}
