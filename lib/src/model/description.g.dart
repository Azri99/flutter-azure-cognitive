// GENERATED CODE - DO NOT MODIFY BY HAND

part of description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Description> _$descriptionSerializer = new _$DescriptionSerializer();

class _$DescriptionSerializer implements StructuredSerializer<Description> {
  @override
  final Iterable<Type> types = const [Description, _$Description];
  @override
  final String wireName = 'Description';

  @override
  Iterable<Object> serialize(Serializers serializers, Description object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'captions',
      serializers.serialize(object.captions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Captions)])),
    ];

    return result;
  }

  @override
  Description deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DescriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'captions':
          result.captions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Captions)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Description extends Description {
  @override
  final BuiltList<String> tags;
  @override
  final BuiltList<Captions> captions;

  factory _$Description([void Function(DescriptionBuilder) updates]) =>
      (new DescriptionBuilder()..update(updates)).build();

  _$Description._({this.tags, this.captions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tags, 'Description', 'tags');
    BuiltValueNullFieldError.checkNotNull(captions, 'Description', 'captions');
  }

  @override
  Description rebuild(void Function(DescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescriptionBuilder toBuilder() => new DescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Description &&
        tags == other.tags &&
        captions == other.captions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tags.hashCode), captions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Description')
          ..add('tags', tags)
          ..add('captions', captions))
        .toString();
  }
}

class DescriptionBuilder implements Builder<Description, DescriptionBuilder> {
  _$Description _$v;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  ListBuilder<Captions> _captions;
  ListBuilder<Captions> get captions =>
      _$this._captions ??= new ListBuilder<Captions>();
  set captions(ListBuilder<Captions> captions) => _$this._captions = captions;

  DescriptionBuilder();

  DescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags.toBuilder();
      _captions = $v.captions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Description other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Description;
  }

  @override
  void update(void Function(DescriptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Description build() {
    _$Description _$result;
    try {
      _$result = _$v ??
          new _$Description._(tags: tags.build(), captions: captions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
        _$failedField = 'captions';
        captions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Description', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
