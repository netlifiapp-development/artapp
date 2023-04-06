import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'example_arts_record.g.dart';

abstract class ExampleArtsRecord
    implements Built<ExampleArtsRecord, ExampleArtsRecordBuilder> {
  static Serializer<ExampleArtsRecord> get serializer =>
      _$exampleArtsRecordSerializer;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  BuiltList<String>? get paths;

  BuiltList<String>? get prompts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExampleArtsRecordBuilder builder) => builder
    ..paths = ListBuilder()
    ..prompts = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('example_arts');

  static Stream<ExampleArtsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExampleArtsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExampleArtsRecord._();
  factory ExampleArtsRecord([void Function(ExampleArtsRecordBuilder) updates]) =
      _$ExampleArtsRecord;

  static ExampleArtsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExampleArtsRecordData({
  DateTime? createdAt,
}) {
  final firestoreData = serializers.toFirestore(
    ExampleArtsRecord.serializer,
    ExampleArtsRecord(
      (e) => e
        ..createdAt = createdAt
        ..paths = null
        ..prompts = null,
    ),
  );

  return firestoreData;
}
