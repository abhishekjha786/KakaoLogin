// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NoticeRecord> _$noticeRecordSerializer =
    new _$NoticeRecordSerializer();

class _$NoticeRecordSerializer implements StructuredSerializer<NoticeRecord> {
  @override
  final Iterable<Type> types = const [NoticeRecord, _$NoticeRecord];
  @override
  final String wireName = 'NoticeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NoticeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.authorUser;
    if (value != null) {
      result
        ..add('author_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.open;
    if (value != null) {
      result
        ..add('open')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  NoticeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'author_user':
          result.authorUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$NoticeRecord extends NoticeRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? authorUser;
  @override
  final bool? open;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NoticeRecord([void Function(NoticeRecordBuilder)? updates]) =>
      (new NoticeRecordBuilder()..update(updates))._build();

  _$NoticeRecord._(
      {this.title,
      this.description,
      this.createdTime,
      this.authorUser,
      this.open,
      this.ffRef})
      : super._();

  @override
  NoticeRecord rebuild(void Function(NoticeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticeRecordBuilder toBuilder() => new NoticeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticeRecord &&
        title == other.title &&
        description == other.description &&
        createdTime == other.createdTime &&
        authorUser == other.authorUser &&
        open == other.open &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), description.hashCode),
                    createdTime.hashCode),
                authorUser.hashCode),
            open.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoticeRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('createdTime', createdTime)
          ..add('authorUser', authorUser)
          ..add('open', open)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NoticeRecordBuilder
    implements Builder<NoticeRecord, NoticeRecordBuilder> {
  _$NoticeRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _authorUser;
  DocumentReference<Object?>? get authorUser => _$this._authorUser;
  set authorUser(DocumentReference<Object?>? authorUser) =>
      _$this._authorUser = authorUser;

  bool? _open;
  bool? get open => _$this._open;
  set open(bool? open) => _$this._open = open;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NoticeRecordBuilder() {
    NoticeRecord._initializeBuilder(this);
  }

  NoticeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _createdTime = $v.createdTime;
      _authorUser = $v.authorUser;
      _open = $v.open;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoticeRecord;
  }

  @override
  void update(void Function(NoticeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoticeRecord build() => _build();

  _$NoticeRecord _build() {
    final _$result = _$v ??
        new _$NoticeRecord._(
            title: title,
            description: description,
            createdTime: createdTime,
            authorUser: authorUser,
            open: open,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
