import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'practice_test_record.g.dart';

abstract class PracticeTestRecord
    implements Built<PracticeTestRecord, PracticeTestRecordBuilder> {
  static Serializer<PracticeTestRecord> get serializer =>
      _$practiceTestRecordSerializer;

  String? get topic;

  String? get links;

  String? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PracticeTestRecordBuilder builder) => builder
    ..topic = ''
    ..links = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('practice_test');

  static Stream<PracticeTestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PracticeTestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PracticeTestRecord._();
  factory PracticeTestRecord(
          [void Function(PracticeTestRecordBuilder) updates]) =
      _$PracticeTestRecord;

  static PracticeTestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPracticeTestRecordData({
  String? topic,
  String? links,
  String? type,
}) {
  final firestoreData = serializers.toFirestore(
    PracticeTestRecord.serializer,
    PracticeTestRecord(
      (p) => p
        ..topic = topic
        ..links = links
        ..type = type,
    ),
  );

  return firestoreData;
}
