import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'request_record.g.dart';

abstract class RequestRecord
    implements Built<RequestRecord, RequestRecordBuilder> {
  static Serializer<RequestRecord> get serializer => _$requestRecordSerializer;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get problem;

  String? get area;

  @BuiltValueField(wireName: 'detective_user')
  DocumentReference? get detectiveUser;

  @BuiltValueField(wireName: 'call_now')
  bool? get callNow;

  String? get description;

  BuiltList<String>? get file;

  @BuiltValueField(wireName: 'post_user')
  DocumentReference? get postUser;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RequestRecordBuilder builder) => builder
    ..problem = ''
    ..area = ''
    ..callNow = false
    ..description = ''
    ..file = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request');

  static Stream<RequestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RequestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RequestRecord._();
  factory RequestRecord([void Function(RequestRecordBuilder) updates]) =
      _$RequestRecord;

  static RequestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRequestRecordData({
  DateTime? createdTime,
  String? problem,
  String? area,
  DocumentReference? detectiveUser,
  bool? callNow,
  String? description,
  DocumentReference? postUser,
}) {
  final firestoreData = serializers.toFirestore(
    RequestRecord.serializer,
    RequestRecord(
      (r) => r
        ..createdTime = createdTime
        ..problem = problem
        ..area = area
        ..detectiveUser = detectiveUser
        ..callNow = callNow
        ..description = description
        ..file = null
        ..postUser = postUser,
    ),
  );

  return firestoreData;
}
