// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestRecord> _$requestRecordSerializer =
    new _$RequestRecordSerializer();

class _$RequestRecordSerializer implements StructuredSerializer<RequestRecord> {
  @override
  final Iterable<Type> types = const [RequestRecord, _$RequestRecord];
  @override
  final String wireName = 'RequestRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RequestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.problem;
    if (value != null) {
      result
        ..add('problem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detectiveUser;
    if (value != null) {
      result
        ..add('detective_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.callNow;
    if (value != null) {
      result
        ..add('call_now')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.postUser;
    if (value != null) {
      result
        ..add('post_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  RequestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'problem':
          result.problem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detective_user':
          result.detectiveUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'call_now':
          result.callNow = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'file':
          result.file.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'post_user':
          result.postUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$RequestRecord extends RequestRecord {
  @override
  final DateTime? createdTime;
  @override
  final String? problem;
  @override
  final String? area;
  @override
  final DocumentReference<Object?>? detectiveUser;
  @override
  final bool? callNow;
  @override
  final String? description;
  @override
  final BuiltList<String>? file;
  @override
  final DocumentReference<Object?>? postUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RequestRecord([void Function(RequestRecordBuilder)? updates]) =>
      (new RequestRecordBuilder()..update(updates))._build();

  _$RequestRecord._(
      {this.createdTime,
      this.problem,
      this.area,
      this.detectiveUser,
      this.callNow,
      this.description,
      this.file,
      this.postUser,
      this.ffRef})
      : super._();

  @override
  RequestRecord rebuild(void Function(RequestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestRecordBuilder toBuilder() => new RequestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestRecord &&
        createdTime == other.createdTime &&
        problem == other.problem &&
        area == other.area &&
        detectiveUser == other.detectiveUser &&
        callNow == other.callNow &&
        description == other.description &&
        file == other.file &&
        postUser == other.postUser &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, createdTime.hashCode),
                                    problem.hashCode),
                                area.hashCode),
                            detectiveUser.hashCode),
                        callNow.hashCode),
                    description.hashCode),
                file.hashCode),
            postUser.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestRecord')
          ..add('createdTime', createdTime)
          ..add('problem', problem)
          ..add('area', area)
          ..add('detectiveUser', detectiveUser)
          ..add('callNow', callNow)
          ..add('description', description)
          ..add('file', file)
          ..add('postUser', postUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RequestRecordBuilder
    implements Builder<RequestRecord, RequestRecordBuilder> {
  _$RequestRecord? _$v;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _problem;
  String? get problem => _$this._problem;
  set problem(String? problem) => _$this._problem = problem;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  DocumentReference<Object?>? _detectiveUser;
  DocumentReference<Object?>? get detectiveUser => _$this._detectiveUser;
  set detectiveUser(DocumentReference<Object?>? detectiveUser) =>
      _$this._detectiveUser = detectiveUser;

  bool? _callNow;
  bool? get callNow => _$this._callNow;
  set callNow(bool? callNow) => _$this._callNow = callNow;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _file;
  ListBuilder<String> get file => _$this._file ??= new ListBuilder<String>();
  set file(ListBuilder<String>? file) => _$this._file = file;

  DocumentReference<Object?>? _postUser;
  DocumentReference<Object?>? get postUser => _$this._postUser;
  set postUser(DocumentReference<Object?>? postUser) =>
      _$this._postUser = postUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RequestRecordBuilder() {
    RequestRecord._initializeBuilder(this);
  }

  RequestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _problem = $v.problem;
      _area = $v.area;
      _detectiveUser = $v.detectiveUser;
      _callNow = $v.callNow;
      _description = $v.description;
      _file = $v.file?.toBuilder();
      _postUser = $v.postUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestRecord;
  }

  @override
  void update(void Function(RequestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestRecord build() => _build();

  _$RequestRecord _build() {
    _$RequestRecord _$result;
    try {
      _$result = _$v ??
          new _$RequestRecord._(
              createdTime: createdTime,
              problem: problem,
              area: area,
              detectiveUser: detectiveUser,
              callNow: callNow,
              description: description,
              file: _file?.build(),
              postUser: postUser,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'file';
        _file?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
