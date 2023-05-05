import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'eligibility_record.g.dart';

abstract class EligibilityRecord
    implements Built<EligibilityRecord, EligibilityRecordBuilder> {
  static Serializer<EligibilityRecord> get serializer =>
      _$eligibilityRecordSerializer;

  String? get usn;

  String? get name;

  String? get cpga;

  String? get sem1;

  String? get sem2;

  String? get sem3;

  String? get sem4;

  String? get sem5;

  String? get sem6;

  String? get sem7;

  String? get eligible;

  @BuiltValueField(wireName: 'PXresult')
  String? get pXresult;

  @BuiltValueField(wireName: 'AXresult')
  String? get aXresult;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EligibilityRecordBuilder builder) => builder
    ..usn = ''
    ..name = ''
    ..cpga = ''
    ..sem1 = ''
    ..sem2 = ''
    ..sem3 = ''
    ..sem4 = ''
    ..sem5 = ''
    ..sem6 = ''
    ..sem7 = ''
    ..eligible = ''
    ..pXresult = ''
    ..aXresult = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eligibility');

  static Stream<EligibilityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EligibilityRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EligibilityRecord._();
  factory EligibilityRecord([void Function(EligibilityRecordBuilder) updates]) =
      _$EligibilityRecord;

  static EligibilityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    EligibilityRecord.serializer,
    EligibilityRecord(
      (e) => e
        ..usn = usn
        ..name = name
        ..cpga = cpga
        ..sem1 = sem1
        ..sem2 = sem2
        ..sem3 = sem3
        ..sem4 = sem4
        ..sem5 = sem5
        ..sem6 = sem6
        ..sem7 = sem7
        ..eligible = eligible
        ..pXresult = pXresult
        ..aXresult = aXresult,
    ),
  );

  return firestoreData;
}
