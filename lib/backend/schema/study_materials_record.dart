import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudyMaterialsRecord extends FirestoreRecord {
  StudyMaterialsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "pdf" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  bool hasPdf() => _pdf != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _topic = snapshotData['topic'] as String?;
    _pdf = snapshotData['pdf'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('study_materials');

  static Stream<StudyMaterialsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudyMaterialsRecord.fromSnapshot(s));

  static Future<StudyMaterialsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudyMaterialsRecord.fromSnapshot(s));

  static StudyMaterialsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudyMaterialsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudyMaterialsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudyMaterialsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudyMaterialsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createStudyMaterialsRecordData({
  String? topic,
  String? pdf,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topic': topic,
      'pdf': pdf,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}
