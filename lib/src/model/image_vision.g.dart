// GENERATED CODE - DO NOT MODIFY BY HAND

part of image_vision;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageVision> _$imageVisionSerializer = new _$ImageVisionSerializer();

class _$ImageVisionSerializer implements StructuredSerializer<ImageVision> {
  @override
  final Iterable<Type> types = const [ImageVision, _$ImageVision];
  @override
  final String wireName = 'ImageVision';

  @override
  Iterable<Object> serialize(Serializers serializers, ImageVision object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Categories)])),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(Description)),
      'requestId',
      serializers.serialize(object.requestId,
          specifiedType: const FullType(String)),
      'metadata',
      serializers.serialize(object.metadata,
          specifiedType: const FullType(Metadata)),
    ];

    return result;
  }

  @override
  ImageVision deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageVisionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Categories)]))
              as BuiltList<Object>);
          break;
        case 'description':
          result.description.replace(serializers.deserialize(value,
              specifiedType: const FullType(Description)) as Description);
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(Metadata)) as Metadata);
          break;
      }
    }

    return result.build();
  }
}

class _$ImageVision extends ImageVision {
  @override
  final BuiltList<Categories> categories;
  @override
  final Description description;
  @override
  final String requestId;
  @override
  final Metadata metadata;

  factory _$ImageVision([void Function(ImageVisionBuilder) updates]) =>
      (new ImageVisionBuilder()..update(updates)).build();

  _$ImageVision._(
      {this.categories, this.description, this.requestId, this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categories, 'ImageVision', 'categories');
    BuiltValueNullFieldError.checkNotNull(
        description, 'ImageVision', 'description');
    BuiltValueNullFieldError.checkNotNull(
        requestId, 'ImageVision', 'requestId');
    BuiltValueNullFieldError.checkNotNull(metadata, 'ImageVision', 'metadata');
  }

  @override
  ImageVision rebuild(void Function(ImageVisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageVisionBuilder toBuilder() => new ImageVisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageVision &&
        categories == other.categories &&
        description == other.description &&
        requestId == other.requestId &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, categories.hashCode), description.hashCode),
            requestId.hashCode),
        metadata.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageVision')
          ..add('categories', categories)
          ..add('description', description)
          ..add('requestId', requestId)
          ..add('metadata', metadata))
        .toString();
  }
}

class ImageVisionBuilder implements Builder<ImageVision, ImageVisionBuilder> {
  _$ImageVision _$v;

  ListBuilder<Categories> _categories;
  ListBuilder<Categories> get categories =>
      _$this._categories ??= new ListBuilder<Categories>();
  set categories(ListBuilder<Categories> categories) =>
      _$this._categories = categories;

  DescriptionBuilder _description;
  DescriptionBuilder get description =>
      _$this._description ??= new DescriptionBuilder();
  set description(DescriptionBuilder description) =>
      _$this._description = description;

  String _requestId;
  String get requestId => _$this._requestId;
  set requestId(String requestId) => _$this._requestId = requestId;

  MetadataBuilder _metadata;
  MetadataBuilder get metadata => _$this._metadata ??= new MetadataBuilder();
  set metadata(MetadataBuilder metadata) => _$this._metadata = metadata;

  ImageVisionBuilder();

  ImageVisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categories = $v.categories.toBuilder();
      _description = $v.description.toBuilder();
      _requestId = $v.requestId;
      _metadata = $v.metadata.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageVision other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageVision;
  }

  @override
  void update(void Function(ImageVisionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageVision build() {
    _$ImageVision _$result;
    try {
      _$result = _$v ??
          new _$ImageVision._(
              categories: categories.build(),
              description: description.build(),
              requestId: BuiltValueNullFieldError.checkNotNull(
                  requestId, 'ImageVision', 'requestId'),
              metadata: metadata.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'description';
        description.build();

        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImageVision', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
