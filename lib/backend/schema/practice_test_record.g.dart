// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_test_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PracticeTestRecord> _$practiceTestRecordSerializer =
    new _$PracticeTestRecordSerializer();

class _$PracticeTestRecordSerializer
    implements StructuredSerializer<PracticeTestRecord> {
  @override
  final Iterable<Type> types = const [PracticeTestRecord, _$PracticeTestRecord];
  @override
  final String wireName = 'PracticeTestRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PracticeTestRecord object,
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
    value = object.links;
    if (value != null) {
      result
        ..add('links')
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
  PracticeTestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PracticeTestRecordBuilder();

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
        case 'links':
          result.links = serializers.deserialize(value,
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

class _$PracticeTestRecord extends PracticeTestRecord {
  @override
  final String? topic;
  @override
  final String? links;
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PracticeTestRecord(
          [void Function(PracticeTestRecordBuilder)? updates]) =>
      (new PracticeTestRecordBuilder()..update(updates))._build();

  _$PracticeTestRecord._({this.topic, this.links, this.type, this.ffRef})
      : super._();

  @override
  PracticeTestRecord rebuild(
          void Function(PracticeTestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PracticeTestRecordBuilder toBuilder() =>
      new PracticeTestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PracticeTestRecord &&
        topic == other.topic &&
        links == other.links &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PracticeTestRecord')
          ..add('topic', topic)
          ..add('links', links)
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PracticeTestRecordBuilder
    implements Builder<PracticeTestRecord, PracticeTestRecordBuilder> {
  _$PracticeTestRecord? _$v;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _links;
  String? get links => _$this._links;
  set links(String? links) => _$this._links = links;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PracticeTestRecordBuilder() {
    PracticeTestRecord._initializeBuilder(this);
  }

  PracticeTestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topic = $v.topic;
      _links = $v.links;
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PracticeTestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PracticeTestRecord;
  }

  @override
  void update(void Function(PracticeTestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PracticeTestRecord build() => _build();

  _$PracticeTestRecord _build() {
    final _$result = _$v ??
        new _$PracticeTestRecord._(
            topic: topic, links: links, type: type, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
