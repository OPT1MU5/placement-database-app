// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edu_k_y_c_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EduKYCRecord> _$eduKYCRecordSerializer =
    new _$EduKYCRecordSerializer();

class _$EduKYCRecordSerializer implements StructuredSerializer<EduKYCRecord> {
  @override
  final Iterable<Type> types = const [EduKYCRecord, _$EduKYCRecord];
  @override
  final String wireName = 'EduKYCRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EduKYCRecord object,
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
    value = object.schoolName;
    if (value != null) {
      result
        ..add('School_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grade10Marks;
    if (value != null) {
      result
        ..add('Grade10_marks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.markscard10;
    if (value != null) {
      result
        ..add('markscard_10')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.board10;
    if (value != null) {
      result
        ..add('board_10')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regNum10;
    if (value != null) {
      result
        ..add('regNum_10')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cType;
    if (value != null) {
      result
        ..add('cType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cName;
    if (value != null) {
      result
        ..add('cName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grade12Marks;
    if (value != null) {
      result
        ..add('grade12_marks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.board12;
    if (value != null) {
      result
        ..add('board12')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cregNum;
    if (value != null) {
      result
        ..add('CregNum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.markscard12;
    if (value != null) {
      result
        ..add('markscard_12')
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
  EduKYCRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EduKYCRecordBuilder();

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
        case 'School_Name':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Grade10_marks':
          result.grade10Marks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'markscard_10':
          result.markscard10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'board_10':
          result.board10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regNum_10':
          result.regNum10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cType':
          result.cType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cName':
          result.cName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grade12_marks':
          result.grade12Marks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'board12':
          result.board12 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CregNum':
          result.cregNum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'markscard_12':
          result.markscard12 = serializers.deserialize(value,
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

class _$EduKYCRecord extends EduKYCRecord {
  @override
  final String? usn;
  @override
  final String? name;
  @override
  final String? schoolName;
  @override
  final String? grade10Marks;
  @override
  final String? markscard10;
  @override
  final String? board10;
  @override
  final String? regNum10;
  @override
  final String? cType;
  @override
  final String? cName;
  @override
  final String? grade12Marks;
  @override
  final String? board12;
  @override
  final String? cregNum;
  @override
  final String? markscard12;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EduKYCRecord([void Function(EduKYCRecordBuilder)? updates]) =>
      (new EduKYCRecordBuilder()..update(updates))._build();

  _$EduKYCRecord._(
      {this.usn,
      this.name,
      this.schoolName,
      this.grade10Marks,
      this.markscard10,
      this.board10,
      this.regNum10,
      this.cType,
      this.cName,
      this.grade12Marks,
      this.board12,
      this.cregNum,
      this.markscard12,
      this.ffRef})
      : super._();

  @override
  EduKYCRecord rebuild(void Function(EduKYCRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EduKYCRecordBuilder toBuilder() => new EduKYCRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EduKYCRecord &&
        usn == other.usn &&
        name == other.name &&
        schoolName == other.schoolName &&
        grade10Marks == other.grade10Marks &&
        markscard10 == other.markscard10 &&
        board10 == other.board10 &&
        regNum10 == other.regNum10 &&
        cType == other.cType &&
        cName == other.cName &&
        grade12Marks == other.grade12Marks &&
        board12 == other.board12 &&
        cregNum == other.cregNum &&
        markscard12 == other.markscard12 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usn.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, schoolName.hashCode);
    _$hash = $jc(_$hash, grade10Marks.hashCode);
    _$hash = $jc(_$hash, markscard10.hashCode);
    _$hash = $jc(_$hash, board10.hashCode);
    _$hash = $jc(_$hash, regNum10.hashCode);
    _$hash = $jc(_$hash, cType.hashCode);
    _$hash = $jc(_$hash, cName.hashCode);
    _$hash = $jc(_$hash, grade12Marks.hashCode);
    _$hash = $jc(_$hash, board12.hashCode);
    _$hash = $jc(_$hash, cregNum.hashCode);
    _$hash = $jc(_$hash, markscard12.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EduKYCRecord')
          ..add('usn', usn)
          ..add('name', name)
          ..add('schoolName', schoolName)
          ..add('grade10Marks', grade10Marks)
          ..add('markscard10', markscard10)
          ..add('board10', board10)
          ..add('regNum10', regNum10)
          ..add('cType', cType)
          ..add('cName', cName)
          ..add('grade12Marks', grade12Marks)
          ..add('board12', board12)
          ..add('cregNum', cregNum)
          ..add('markscard12', markscard12)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EduKYCRecordBuilder
    implements Builder<EduKYCRecord, EduKYCRecordBuilder> {
  _$EduKYCRecord? _$v;

  String? _usn;
  String? get usn => _$this._usn;
  set usn(String? usn) => _$this._usn = usn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _schoolName;
  String? get schoolName => _$this._schoolName;
  set schoolName(String? schoolName) => _$this._schoolName = schoolName;

  String? _grade10Marks;
  String? get grade10Marks => _$this._grade10Marks;
  set grade10Marks(String? grade10Marks) => _$this._grade10Marks = grade10Marks;

  String? _markscard10;
  String? get markscard10 => _$this._markscard10;
  set markscard10(String? markscard10) => _$this._markscard10 = markscard10;

  String? _board10;
  String? get board10 => _$this._board10;
  set board10(String? board10) => _$this._board10 = board10;

  String? _regNum10;
  String? get regNum10 => _$this._regNum10;
  set regNum10(String? regNum10) => _$this._regNum10 = regNum10;

  String? _cType;
  String? get cType => _$this._cType;
  set cType(String? cType) => _$this._cType = cType;

  String? _cName;
  String? get cName => _$this._cName;
  set cName(String? cName) => _$this._cName = cName;

  String? _grade12Marks;
  String? get grade12Marks => _$this._grade12Marks;
  set grade12Marks(String? grade12Marks) => _$this._grade12Marks = grade12Marks;

  String? _board12;
  String? get board12 => _$this._board12;
  set board12(String? board12) => _$this._board12 = board12;

  String? _cregNum;
  String? get cregNum => _$this._cregNum;
  set cregNum(String? cregNum) => _$this._cregNum = cregNum;

  String? _markscard12;
  String? get markscard12 => _$this._markscard12;
  set markscard12(String? markscard12) => _$this._markscard12 = markscard12;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EduKYCRecordBuilder() {
    EduKYCRecord._initializeBuilder(this);
  }

  EduKYCRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usn = $v.usn;
      _name = $v.name;
      _schoolName = $v.schoolName;
      _grade10Marks = $v.grade10Marks;
      _markscard10 = $v.markscard10;
      _board10 = $v.board10;
      _regNum10 = $v.regNum10;
      _cType = $v.cType;
      _cName = $v.cName;
      _grade12Marks = $v.grade12Marks;
      _board12 = $v.board12;
      _cregNum = $v.cregNum;
      _markscard12 = $v.markscard12;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EduKYCRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EduKYCRecord;
  }

  @override
  void update(void Function(EduKYCRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EduKYCRecord build() => _build();

  _$EduKYCRecord _build() {
    final _$result = _$v ??
        new _$EduKYCRecord._(
            usn: usn,
            name: name,
            schoolName: schoolName,
            grade10Marks: grade10Marks,
            markscard10: markscard10,
            board10: board10,
            regNum10: regNum10,
            cType: cType,
            cName: cName,
            grade12Marks: grade12Marks,
            board12: board12,
            cregNum: cregNum,
            markscard12: markscard12,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
