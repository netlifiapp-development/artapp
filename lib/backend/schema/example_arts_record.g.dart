// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_arts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExampleArtsRecord> _$exampleArtsRecordSerializer =
    new _$ExampleArtsRecordSerializer();

class _$ExampleArtsRecordSerializer
    implements StructuredSerializer<ExampleArtsRecord> {
  @override
  final Iterable<Type> types = const [ExampleArtsRecord, _$ExampleArtsRecord];
  @override
  final String wireName = 'ExampleArtsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExampleArtsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paths;
    if (value != null) {
      result
        ..add('paths')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.prompts;
    if (value != null) {
      result
        ..add('prompts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ExampleArtsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExampleArtsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'paths':
          result.paths.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'prompts':
          result.prompts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ExampleArtsRecord extends ExampleArtsRecord {
  @override
  final DateTime? createdAt;
  @override
  final BuiltList<String>? paths;
  @override
  final BuiltList<String>? prompts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExampleArtsRecord(
          [void Function(ExampleArtsRecordBuilder)? updates]) =>
      (new ExampleArtsRecordBuilder()..update(updates))._build();

  _$ExampleArtsRecord._({this.createdAt, this.paths, this.prompts, this.ffRef})
      : super._();

  @override
  ExampleArtsRecord rebuild(void Function(ExampleArtsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExampleArtsRecordBuilder toBuilder() =>
      new ExampleArtsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExampleArtsRecord &&
        createdAt == other.createdAt &&
        paths == other.paths &&
        prompts == other.prompts &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, paths.hashCode);
    _$hash = $jc(_$hash, prompts.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExampleArtsRecord')
          ..add('createdAt', createdAt)
          ..add('paths', paths)
          ..add('prompts', prompts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExampleArtsRecordBuilder
    implements Builder<ExampleArtsRecord, ExampleArtsRecordBuilder> {
  _$ExampleArtsRecord? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<String>? _paths;
  ListBuilder<String> get paths => _$this._paths ??= new ListBuilder<String>();
  set paths(ListBuilder<String>? paths) => _$this._paths = paths;

  ListBuilder<String>? _prompts;
  ListBuilder<String> get prompts =>
      _$this._prompts ??= new ListBuilder<String>();
  set prompts(ListBuilder<String>? prompts) => _$this._prompts = prompts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExampleArtsRecordBuilder() {
    ExampleArtsRecord._initializeBuilder(this);
  }

  ExampleArtsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _paths = $v.paths?.toBuilder();
      _prompts = $v.prompts?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExampleArtsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExampleArtsRecord;
  }

  @override
  void update(void Function(ExampleArtsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExampleArtsRecord build() => _build();

  _$ExampleArtsRecord _build() {
    _$ExampleArtsRecord _$result;
    try {
      _$result = _$v ??
          new _$ExampleArtsRecord._(
              createdAt: createdAt,
              paths: _paths?.build(),
              prompts: _prompts?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paths';
        _paths?.build();
        _$failedField = 'prompts';
        _prompts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExampleArtsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
