import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comments_record.g.dart';

abstract class CommentsRecord
    implements Built<CommentsRecord, CommentsRecordBuilder> {
  static Serializer<CommentsRecord> get serializer =>
      _$commentsRecordSerializer;

  @BuiltValueField(wireName: 'comment_description')
  String? get commentDescription;

  @BuiltValueField(wireName: 'comment_user')
  DocumentReference? get commentUser;

  @BuiltValueField(wireName: 'comment_timestamp')
  DateTime? get commentTimestamp;

  @BuiltValueField(wireName: 'comment_likes')
  BuiltList<DocumentReference>? get commentLikes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(CommentsRecordBuilder builder) => builder
    ..commentDescription = ''
    ..commentLikes = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comments')
          : FirebaseFirestore.instance.collectionGroup('comments');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('comments').doc();

  static Stream<CommentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommentsRecord._();
  factory CommentsRecord([void Function(CommentsRecordBuilder) updates]) =
      _$CommentsRecord;

  static CommentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentDescription,
  DocumentReference? commentUser,
  DateTime? commentTimestamp,
}) {
  final firestoreData = serializers.toFirestore(
    CommentsRecord.serializer,
    CommentsRecord(
      (c) => c
        ..commentDescription = commentDescription
        ..commentUser = commentUser
        ..commentTimestamp = commentTimestamp
        ..commentLikes = null,
    ),
  );

  return firestoreData;
}
