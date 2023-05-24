import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PracticeTestRecord extends FirestoreRecord {
  PracticeTestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "links" field.
  String? _links;
  String get links => _links ?? '';
  bool hasLinks() => _links != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _topic = snapshotData['topic'] as String?;
    _links = snapshotData['links'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('practice_test');

  static Stream<PracticeTestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PracticeTestRecord.fromSnapshot(s));

  static Future<PracticeTestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PracticeTestRecord.fromSnapshot(s));

  static PracticeTestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PracticeTestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PracticeTestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PracticeTestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PracticeTestRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPracticeTestRecordData({
  String? topic,
  String? links,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'topic': topic,
      'links': links,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}
