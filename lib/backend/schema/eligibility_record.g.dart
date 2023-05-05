// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eligibility_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EligibilityRecord> _$eligibilityRecordSerializer =
    new _$EligibilityRecordSerializer();

class _$EligibilityRecordSerializer
    implements StructuredSerializer<EligibilityRecord> {
  @override
  final Iterable<Type> types = const [EligibilityRecord, _$EligibilityRecord];
  @override
  final String wireName = 'EligibilityRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EligibilityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.usn;
    if (value != null) {
      result
        ..add('usn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpga;
    if (value != null) {
      result
        ..add('cpga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem1;
    if (value != null) {
      result
        ..add('sem1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem2;
    if (value != null) {
      result
        ..add('sem2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem3;
    if (value != null) {
      result
        ..add('sem3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem4;
    if (value != null) {
      result
        ..add('sem4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem5;
    if (value != null) {
      result
        ..add('sem5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem6;
    if (value != null) {
      result
        ..add('sem6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sem7;
    if (value != null) {
      result
        ..add('sem7')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eligible;
    if (value != null) {
      result
        ..add('eligible')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pXresult;
    if (value != null) {
      result
        ..add('PXresult')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aXresult;
    if (value != null) {
      result
        ..add('AXresult')
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
  EligibilityRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EligibilityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usn':
          result.usn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpga':
          result.cpga = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem1':
          result.sem1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem2':
          result.sem2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem3':
          result.sem3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem4':
          result.sem4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem5':
          result.sem5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem6':
          result.sem6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sem7':
          result.sem7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eligible':
          result.eligible = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PXresult':
          result.pXresult = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AXresult':
          result.aXresult = serializers.deserialize(value,
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

class _$EligibilityRecord extends EligibilityRecord {
  @override
  final String? usn;
  @override
  final String? name;
  @override
  final String? cpga;
  @override
  final String? sem1;
  @override
  final String? sem2;
  @override
  final String? sem3;
  @override
  final String? sem4;
  @override
  final String? sem5;
  @override
  final String? sem6;
  @override
  final String? sem7;
  @override
  final String? eligible;
  @override
  final String? pXresult;
  @override
  final String? aXresult;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EligibilityRecord(
          [void Function(EligibilityRecordBuilder)? updates]) =>
      (new EligibilityRecordBuilder()..update(updates))._build();

  _$EligibilityRecord._(
      {this.usn,
      this.name,
      this.cpga,
      this.sem1,
      this.sem2,
      this.sem3,
      this.sem4,
      this.sem5,
      this.sem6,
      this.sem7,
      this.eligible,
      this.pXresult,
      this.aXresult,
      this.ffRef})
      : super._();

  @override
  EligibilityRecord rebuild(void Function(EligibilityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EligibilityRecordBuilder toBuilder() =>
      new EligibilityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EligibilityRecord &&
        usn == other.usn &&
        name == other.name &&
        cpga == other.cpga &&
        sem1 == other.sem1 &&
        sem2 == other.sem2 &&
        sem3 == other.sem3 &&
        sem4 == other.sem4 &&
        sem5 == other.sem5 &&
        sem6 == other.sem6 &&
        sem7 == other.sem7 &&
        eligible == other.eligible &&
        pXresult == other.pXresult &&
        aXresult == other.aXresult &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usn.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, cpga.hashCode);
    _$hash = $jc(_$hash, sem1.hashCode);
    _$hash = $jc(_$hash, sem2.hashCode);
    _$hash = $jc(_$hash, sem3.hashCode);
    _$hash = $jc(_$hash, sem4.hashCode);
    _$hash = $jc(_$hash, sem5.hashCode);
    _$hash = $jc(_$hash, sem6.hashCode);
    _$hash = $jc(_$hash, sem7.hashCode);
    _$hash = $jc(_$hash, eligible.hashCode);
    _$hash = $jc(_$hash, pXresult.hashCode);
    _$hash = $jc(_$hash, aXresult.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EligibilityRecord')
          ..add('usn', usn)
          ..add('name', name)
          ..add('cpga', cpga)
          ..add('sem1', sem1)
          ..add('sem2', sem2)
          ..add('sem3', sem3)
          ..add('sem4', sem4)
          ..add('sem5', sem5)
          ..add('sem6', sem6)
          ..add('sem7', sem7)
          ..add('eligible', eligible)
          ..add('pXresult', pXresult)
          ..add('aXresult', aXresult)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EligibilityRecordBuilder
    implements Builder<EligibilityRecord, EligibilityRecordBuilder> {
  _$EligibilityRecord? _$v;

  String? _usn;
  String? get usn => _$this._usn;
  set usn(String? usn) => _$this._usn = usn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _cpga;
  String? get cpga => _$this._cpga;
  set cpga(String? cpga) => _$this._cpga = cpga;

  String? _sem1;
  String? get sem1 => _$this._sem1;
  set sem1(String? sem1) => _$this._sem1 = sem1;

  String? _sem2;
  String? get sem2 => _$this._sem2;
  set sem2(String? sem2) => _$this._sem2 = sem2;

  String? _sem3;
  String? get sem3 => _$this._sem3;
  set sem3(String? sem3) => _$this._sem3 = sem3;

  String? _sem4;
  String? get sem4 => _$this._sem4;
  set sem4(String? sem4) => _$this._sem4 = sem4;

  String? _sem5;
  String? get sem5 => _$this._sem5;
  set sem5(String? sem5) => _$this._sem5 = sem5;

  String? _sem6;
  String? get sem6 => _$this._sem6;
  set sem6(String? sem6) => _$this._sem6 = sem6;

  String? _sem7;
  String? get sem7 => _$this._sem7;
  set sem7(String? sem7) => _$this._sem7 = sem7;

  String? _eligible;
  String? get eligible => _$this._eligible;
  set eligible(String? eligible) => _$this._eligible = eligible;

  String? _pXresult;
  String? get pXresult => _$this._pXresult;
  set pXresult(String? pXresult) => _$this._pXresult = pXresult;

  String? _aXresult;
  String? get aXresult => _$this._aXresult;
  set aXresult(String? aXresult) => _$this._aXresult = aXresult;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EligibilityRecordBuilder() {
    EligibilityRecord._initializeBuilder(this);
  }

  EligibilityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usn = $v.usn;
      _name = $v.name;
      _cpga = $v.cpga;
      _sem1 = $v.sem1;
      _sem2 = $v.sem2;
      _sem3 = $v.sem3;
      _sem4 = $v.sem4;
      _sem5 = $v.sem5;
      _sem6 = $v.sem6;
      _sem7 = $v.sem7;
      _eligible = $v.eligible;
      _pXresult = $v.pXresult;
      _aXresult = $v.aXresult;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EligibilityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EligibilityRecord;
  }

  @override
  void update(void Function(EligibilityRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EligibilityRecord build() => _build();

  _$EligibilityRecord _build() {
    final _$result = _$v ??
        new _$EligibilityRecord._(
            usn: usn,
            name: name,
            cpga: cpga,
            sem1: sem1,
            sem2: sem2,
            sem3: sem3,
            sem4: sem4,
            sem5: sem5,
            sem6: sem6,
            sem7: sem7,
            eligible: eligible,
            pXresult: pXresult,
            aXresult: aXresult,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
