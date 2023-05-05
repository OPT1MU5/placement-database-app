// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_materials_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudyMaterialsRecord> _$studyMaterialsRecordSerializer =
    new _$StudyMaterialsRecordSerializer();

class _$StudyMaterialsRecordSerializer
    implements StructuredSerializer<StudyMaterialsRecord> {
  @override
  final Iterable<Type> types = const [
    StudyMaterialsRecord,
    _$StudyMaterialsRecord
  ];
  @override
  final String wireName = 'StudyMaterialsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StudyMaterialsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.topic;
    if (value != null) {
      result
        ..add('topic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pdf;
    if (value != null) {
      result
        ..add('pdf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  StudyMaterialsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudyMaterialsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pdf':
          result.pdf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$StudyMaterialsRecord extends StudyMaterialsRecord {
  @override
  final String? topic;
  @override
  final String? pdf;
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudyMaterialsRecord(
          [void Function(StudyMaterialsRecordBuilder)? updates]) =>
      (new StudyMaterialsRecordBuilder()..update(updates))._build();

  _$StudyMaterialsRecord._({this.topic, this.pdf, this.type, this.ffRef})
      : super._();

  @override
  StudyMaterialsRecord rebuild(
          void Function(StudyMaterialsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudyMaterialsRecordBuilder toBuilder() =>
      new StudyMaterialsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudyMaterialsRecord &&
        topic == other.topic &&
        pdf == other.pdf &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, pdf.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudyMaterialsRecord')
          ..add('topic', topic)
          ..add('pdf', pdf)
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudyMaterialsRecordBuilder
    implements Builder<StudyMaterialsRecord, StudyMaterialsRecordBuilder> {
  _$StudyMaterialsRecord? _$v;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _pdf;
  String? get pdf => _$this._pdf;
  set pdf(String? pdf) => _$this._pdf = pdf;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudyMaterialsRecordBuilder() {
    StudyMaterialsRecord._initializeBuilder(this);
  }

  StudyMaterialsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topic = $v.topic;
      _pdf = $v.pdf;
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudyMaterialsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudyMaterialsRecord;
  }

  @override
  void update(void Function(StudyMaterialsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudyMaterialsRecord build() => _build();

  _$StudyMaterialsRecord _build() {
    final _$result = _$v ??
        new _$StudyMaterialsRecord._(
            topic: topic, pdf: pdf, type: type, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
