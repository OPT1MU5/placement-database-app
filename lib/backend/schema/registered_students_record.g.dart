// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_students_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisteredStudentsRecord> _$registeredStudentsRecordSerializer =
    new _$RegisteredStudentsRecordSerializer();

class _$RegisteredStudentsRecordSerializer
    implements StructuredSerializer<RegisteredStudentsRecord> {
  @override
  final Iterable<Type> types = const [
    RegisteredStudentsRecord,
    _$RegisteredStudentsRecord
  ];
  @override
  final String wireName = 'RegisteredStudentsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RegisteredStudentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyN;
    if (value != null) {
      result
        ..add('companyN')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usn;
    if (value != null) {
      result
        ..add('usn')
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
  RegisteredStudentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisteredStudentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyN':
          result.companyN = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usn':
          result.usn = serializers.deserialize(value,
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

class _$RegisteredStudentsRecord extends RegisteredStudentsRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? phoneNumber;
  @override
  final String? companyN;
  @override
  final String? usn;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RegisteredStudentsRecord(
          [void Function(RegisteredStudentsRecordBuilder)? updates]) =>
      (new RegisteredStudentsRecordBuilder()..update(updates))._build();

  _$RegisteredStudentsRecord._(
      {this.email,
      this.displayName,
      this.phoneNumber,
      this.companyN,
      this.usn,
      this.ffRef})
      : super._();

  @override
  RegisteredStudentsRecord rebuild(
          void Function(RegisteredStudentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisteredStudentsRecordBuilder toBuilder() =>
      new RegisteredStudentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisteredStudentsRecord &&
        email == other.email &&
        displayName == other.displayName &&
        phoneNumber == other.phoneNumber &&
        companyN == other.companyN &&
        usn == other.usn &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, companyN.hashCode);
    _$hash = $jc(_$hash, usn.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisteredStudentsRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('phoneNumber', phoneNumber)
          ..add('companyN', companyN)
          ..add('usn', usn)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RegisteredStudentsRecordBuilder
    implements
        Builder<RegisteredStudentsRecord, RegisteredStudentsRecordBuilder> {
  _$RegisteredStudentsRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _companyN;
  String? get companyN => _$this._companyN;
  set companyN(String? companyN) => _$this._companyN = companyN;

  String? _usn;
  String? get usn => _$this._usn;
  set usn(String? usn) => _$this._usn = usn;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RegisteredStudentsRecordBuilder() {
    RegisteredStudentsRecord._initializeBuilder(this);
  }

  RegisteredStudentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _phoneNumber = $v.phoneNumber;
      _companyN = $v.companyN;
      _usn = $v.usn;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisteredStudentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisteredStudentsRecord;
  }

  @override
  void update(void Function(RegisteredStudentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisteredStudentsRecord build() => _build();

  _$RegisteredStudentsRecord _build() {
    final _$result = _$v ??
        new _$RegisteredStudentsRecord._(
            email: email,
            displayName: displayName,
            phoneNumber: phoneNumber,
            companyN: companyN,
            usn: usn,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
