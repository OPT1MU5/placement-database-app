// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyRecord> _$companyRecordSerializer =
    new _$CompanyRecordSerializer();

class _$CompanyRecordSerializer implements StructuredSerializer<CompanyRecord> {
  @override
  final Iterable<Type> types = const [CompanyRecord, _$CompanyRecord];
  @override
  final String wireName = 'CompanyRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompanyRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pXEligibility;
    if (value != null) {
      result
        ..add('PX_eligibility')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aEligibilty;
    if (value != null) {
      result
        ..add('A_eligibilty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rounds;
    if (value != null) {
      result
        ..add('Rounds')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.skills;
    if (value != null) {
      result
        ..add('skills')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.selectedStu;
    if (value != null) {
      result
        ..add('selectedStu')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  CompanyRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PX_eligibility':
          result.pXEligibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'A_eligibilty':
          result.aEligibilty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rounds':
          result.rounds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'skills':
          result.skills.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'selectedStu':
          result.selectedStu.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$CompanyRecord extends CompanyRecord {
  @override
  final String? name;
  @override
  final String? position;
  @override
  final String? salary;
  @override
  final String? type;
  @override
  final String? location;
  @override
  final String? pXEligibility;
  @override
  final String? aEligibilty;
  @override
  final String? status;
  @override
  final BuiltList<String>? rounds;
  @override
  final String? description;
  @override
  final BuiltList<String>? skills;
  @override
  final BuiltList<String>? selectedStu;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyRecord([void Function(CompanyRecordBuilder)? updates]) =>
      (new CompanyRecordBuilder()..update(updates))._build();

  _$CompanyRecord._(
      {this.name,
      this.position,
      this.salary,
      this.type,
      this.location,
      this.pXEligibility,
      this.aEligibilty,
      this.status,
      this.rounds,
      this.description,
      this.skills,
      this.selectedStu,
      this.ffRef})
      : super._();

  @override
  CompanyRecord rebuild(void Function(CompanyRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyRecordBuilder toBuilder() => new CompanyRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyRecord &&
        name == other.name &&
        position == other.position &&
        salary == other.salary &&
        type == other.type &&
        location == other.location &&
        pXEligibility == other.pXEligibility &&
        aEligibilty == other.aEligibilty &&
        status == other.status &&
        rounds == other.rounds &&
        description == other.description &&
        skills == other.skills &&
        selectedStu == other.selectedStu &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, salary.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, pXEligibility.hashCode);
    _$hash = $jc(_$hash, aEligibilty.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, rounds.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, skills.hashCode);
    _$hash = $jc(_$hash, selectedStu.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyRecord')
          ..add('name', name)
          ..add('position', position)
          ..add('salary', salary)
          ..add('type', type)
          ..add('location', location)
          ..add('pXEligibility', pXEligibility)
          ..add('aEligibilty', aEligibilty)
          ..add('status', status)
          ..add('rounds', rounds)
          ..add('description', description)
          ..add('skills', skills)
          ..add('selectedStu', selectedStu)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyRecordBuilder
    implements Builder<CompanyRecord, CompanyRecordBuilder> {
  _$CompanyRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _salary;
  String? get salary => _$this._salary;
  set salary(String? salary) => _$this._salary = salary;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _pXEligibility;
  String? get pXEligibility => _$this._pXEligibility;
  set pXEligibility(String? pXEligibility) =>
      _$this._pXEligibility = pXEligibility;

  String? _aEligibilty;
  String? get aEligibilty => _$this._aEligibilty;
  set aEligibilty(String? aEligibilty) => _$this._aEligibilty = aEligibilty;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<String>? _rounds;
  ListBuilder<String> get rounds =>
      _$this._rounds ??= new ListBuilder<String>();
  set rounds(ListBuilder<String>? rounds) => _$this._rounds = rounds;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _skills;
  ListBuilder<String> get skills =>
      _$this._skills ??= new ListBuilder<String>();
  set skills(ListBuilder<String>? skills) => _$this._skills = skills;

  ListBuilder<String>? _selectedStu;
  ListBuilder<String> get selectedStu =>
      _$this._selectedStu ??= new ListBuilder<String>();
  set selectedStu(ListBuilder<String>? selectedStu) =>
      _$this._selectedStu = selectedStu;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyRecordBuilder() {
    CompanyRecord._initializeBuilder(this);
  }

  CompanyRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _position = $v.position;
      _salary = $v.salary;
      _type = $v.type;
      _location = $v.location;
      _pXEligibility = $v.pXEligibility;
      _aEligibilty = $v.aEligibilty;
      _status = $v.status;
      _rounds = $v.rounds?.toBuilder();
      _description = $v.description;
      _skills = $v.skills?.toBuilder();
      _selectedStu = $v.selectedStu?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyRecord;
  }

  @override
  void update(void Function(CompanyRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyRecord build() => _build();

  _$CompanyRecord _build() {
    _$CompanyRecord _$result;
    try {
      _$result = _$v ??
          new _$CompanyRecord._(
              name: name,
              position: position,
              salary: salary,
              type: type,
              location: location,
              pXEligibility: pXEligibility,
              aEligibilty: aEligibilty,
              status: status,
              rounds: _rounds?.build(),
              description: description,
              skills: _skills?.build(),
              selectedStu: _selectedStu?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rounds';
        _rounds?.build();

        _$failedField = 'skills';
        _skills?.build();
        _$failedField = 'selectedStu';
        _selectedStu?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompanyRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
