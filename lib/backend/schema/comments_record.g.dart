// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentsRecord> _$commentsRecordSerializer =
    new _$CommentsRecordSerializer();

class _$CommentsRecordSerializer
    implements StructuredSerializer<CommentsRecord> {
  @override
  final Iterable<Type> types = const [CommentsRecord, _$CommentsRecord];
  @override
  final String wireName = 'CommentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.commentDescription;
    if (value != null) {
      result
        ..add('comment_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentUser;
    if (value != null) {
      result
        ..add('comment_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.commentTimestamp;
    if (value != null) {
      result
        ..add('comment_timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.commentLikes;
    if (value != null) {
      result
        ..add('comment_likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  CommentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'comment_description':
          result.commentDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment_user':
          result.commentUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'comment_timestamp':
          result.commentTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'comment_likes':
          result.commentLikes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CommentsRecord extends CommentsRecord {
  @override
  final String? commentDescription;
  @override
  final DocumentReference<Object?>? commentUser;
  @override
  final DateTime? commentTimestamp;
  @override
  final BuiltList<DocumentReference<Object?>>? commentLikes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommentsRecord([void Function(CommentsRecordBuilder)? updates]) =>
      (new CommentsRecordBuilder()..update(updates))._build();

  _$CommentsRecord._(
      {this.commentDescription,
      this.commentUser,
      this.commentTimestamp,
      this.commentLikes,
      this.ffRef})
      : super._();

  @override
  CommentsRecord rebuild(void Function(CommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsRecordBuilder toBuilder() =>
      new CommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsRecord &&
        commentDescription == other.commentDescription &&
        commentUser == other.commentUser &&
        commentTimestamp == other.commentTimestamp &&
        commentLikes == other.commentLikes &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, commentDescription.hashCode);
    _$hash = $jc(_$hash, commentUser.hashCode);
    _$hash = $jc(_$hash, commentTimestamp.hashCode);
    _$hash = $jc(_$hash, commentLikes.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentsRecord')
          ..add('commentDescription', commentDescription)
          ..add('commentUser', commentUser)
          ..add('commentTimestamp', commentTimestamp)
          ..add('commentLikes', commentLikes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommentsRecordBuilder
    implements Builder<CommentsRecord, CommentsRecordBuilder> {
  _$CommentsRecord? _$v;

  String? _commentDescription;
  String? get commentDescription => _$this._commentDescription;
  set commentDescription(String? commentDescription) =>
      _$this._commentDescription = commentDescription;

  DocumentReference<Object?>? _commentUser;
  DocumentReference<Object?>? get commentUser => _$this._commentUser;
  set commentUser(DocumentReference<Object?>? commentUser) =>
      _$this._commentUser = commentUser;

  DateTime? _commentTimestamp;
  DateTime? get commentTimestamp => _$this._commentTimestamp;
  set commentTimestamp(DateTime? commentTimestamp) =>
      _$this._commentTimestamp = commentTimestamp;

  ListBuilder<DocumentReference<Object?>>? _commentLikes;
  ListBuilder<DocumentReference<Object?>> get commentLikes =>
      _$this._commentLikes ??= new ListBuilder<DocumentReference<Object?>>();
  set commentLikes(ListBuilder<DocumentReference<Object?>>? commentLikes) =>
      _$this._commentLikes = commentLikes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommentsRecordBuilder() {
    CommentsRecord._initializeBuilder(this);
  }

  CommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentDescription = $v.commentDescription;
      _commentUser = $v.commentUser;
      _commentTimestamp = $v.commentTimestamp;
      _commentLikes = $v.commentLikes?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentsRecord;
  }

  @override
  void update(void Function(CommentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentsRecord build() => _build();

  _$CommentsRecord _build() {
    _$CommentsRecord _$result;
    try {
      _$result = _$v ??
          new _$CommentsRecord._(
              commentDescription: commentDescription,
              commentUser: commentUser,
              commentTimestamp: commentTimestamp,
              commentLikes: _commentLikes?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commentLikes';
        _commentLikes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
