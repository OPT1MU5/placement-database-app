import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_record.g.dart';

abstract class CompanyRecord
    implements Built<CompanyRecord, CompanyRecordBuilder> {
  static Serializer<CompanyRecord> get serializer => _$companyRecordSerializer;

  String? get name;

  String? get position;

  String? get salary;

  String? get type;

  String? get location;

  @BuiltValueField(wireName: 'PX_eligibility')
  String? get pXEligibility;

  @BuiltValueField(wireName: 'A_eligibilty')
  String? get aEligibilty;

  @BuiltValueField(wireName: 'Status')
  String? get status;

  @BuiltValueField(wireName: 'Rounds')
  BuiltList<String>? get rounds;

  String? get description;

  BuiltList<String>? get skills;

  BuiltList<String>? get selectedStu;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyRecordBuilder builder) => builder
    ..name = ''
    ..position = ''
    ..salary = ''
    ..type = ''
    ..location = ''
    ..pXEligibility = ''
    ..aEligibilty = ''
    ..status = ''
    ..rounds = ListBuilder()
    ..description = ''
    ..skills = ListBuilder()
    ..selectedStu = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyRecord._();
  factory CompanyRecord([void Function(CompanyRecordBuilder) updates]) =
      _$CompanyRecord;

  static CompanyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    CompanyRecord.serializer,
    CompanyRecord(
      (c) => c
        ..name = name
        ..position = position
        ..salary = salary
        ..type = type
        ..location = location
        ..pXEligibility = pXEligibility
        ..aEligibilty = aEligibilty
        ..status = status
        ..rounds = null
        ..description = description
        ..skills = null
        ..selectedStu = null,
    ),
  );

  return firestoreData;
}
