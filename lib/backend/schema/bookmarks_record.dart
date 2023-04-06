import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bookmarks_record.g.dart';

abstract class BookmarksRecord
    implements Built<BookmarksRecord, BookmarksRecordBuilder> {
  static Serializer<BookmarksRecord> get serializer =>
      _$bookmarksRecordSerializer;

  @BuiltValueField(wireName: 'bookmark_post')
  DocumentReference? get bookmarkPost;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookmarksRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookmarks');

  static Stream<BookmarksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookmarksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookmarksRecord._();
  factory BookmarksRecord([void Function(BookmarksRecordBuilder) updates]) =
      _$BookmarksRecord;

  static BookmarksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookmarksRecordData({
  DocumentReference? bookmarkPost,
}) {
  final firestoreData = serializers.toFirestore(
    BookmarksRecord.serializer,
    BookmarksRecord(
      (b) => b..bookmarkPost = bookmarkPost,
    ),
  );

  return firestoreData;
}
