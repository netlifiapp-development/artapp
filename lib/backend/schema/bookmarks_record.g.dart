// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookmarksRecord> _$bookmarksRecordSerializer =
    new _$BookmarksRecordSerializer();

class _$BookmarksRecordSerializer
    implements StructuredSerializer<BookmarksRecord> {
  @override
  final Iterable<Type> types = const [BookmarksRecord, _$BookmarksRecord];
  @override
  final String wireName = 'BookmarksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BookmarksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bookmarkPost;
    if (value != null) {
      result
        ..add('bookmark_post')
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
  BookmarksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookmarksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bookmark_post':
          result.bookmarkPost = serializers.deserialize(value,
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

class _$BookmarksRecord extends BookmarksRecord {
  @override
  final DocumentReference<Object?>? bookmarkPost;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BookmarksRecord([void Function(BookmarksRecordBuilder)? updates]) =>
      (new BookmarksRecordBuilder()..update(updates))._build();

  _$BookmarksRecord._({this.bookmarkPost, this.ffRef}) : super._();

  @override
  BookmarksRecord rebuild(void Function(BookmarksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarksRecordBuilder toBuilder() =>
      new BookmarksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookmarksRecord &&
        bookmarkPost == other.bookmarkPost &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookmarkPost.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookmarksRecord')
          ..add('bookmarkPost', bookmarkPost)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BookmarksRecordBuilder
    implements Builder<BookmarksRecord, BookmarksRecordBuilder> {
  _$BookmarksRecord? _$v;

  DocumentReference<Object?>? _bookmarkPost;
  DocumentReference<Object?>? get bookmarkPost => _$this._bookmarkPost;
  set bookmarkPost(DocumentReference<Object?>? bookmarkPost) =>
      _$this._bookmarkPost = bookmarkPost;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BookmarksRecordBuilder() {
    BookmarksRecord._initializeBuilder(this);
  }

  BookmarksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookmarkPost = $v.bookmarkPost;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookmarksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookmarksRecord;
  }

  @override
  void update(void Function(BookmarksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookmarksRecord build() => _build();

  _$BookmarksRecord _build() {
    final _$result = _$v ??
        new _$BookmarksRecord._(bookmarkPost: bookmarkPost, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
