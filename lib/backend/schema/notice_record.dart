import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notice_record.g.dart';

abstract class NoticeRecord
    implements Built<NoticeRecord, NoticeRecordBuilder> {
  static Serializer<NoticeRecord> get serializer => _$noticeRecordSerializer;

  String? get title;

  String? get description;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'author_user')
  DocumentReference? get authorUser;

  bool? get open;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NoticeRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..open = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notice');

  static Stream<NoticeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoticeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoticeRecord._();
  factory NoticeRecord([void Function(NoticeRecordBuilder) updates]) =
      _$NoticeRecord;

  static NoticeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoticeRecordData({
  String? title,
  String? description,
  DateTime? createdTime,
  DocumentReference? authorUser,
  bool? open,
}) {
  final firestoreData = serializers.toFirestore(
    NoticeRecord.serializer,
    NoticeRecord(
      (n) => n
        ..title = title
        ..description = description
        ..createdTime = createdTime
        ..authorUser = authorUser
        ..open = open,
    ),
  );

  return firestoreData;
}
