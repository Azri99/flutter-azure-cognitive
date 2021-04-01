// GENERATED CODE - DO NOT MODIFY BY HAND

part of metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Metadata> _$metadataSerializer = new _$MetadataSerializer();

class _$MetadataSerializer implements StructuredSerializer<Metadata> {
  @override
  final Iterable<Type> types = const [Metadata, _$Metadata];
  @override
  final String wireName = 'Metadata';

  @override
  Iterable<Object> serialize(Serializers serializers, Metadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'format',
      serializers.serialize(object.format,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Metadata deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Metadata extends Metadata {
  @override
  final int height;
  @override
  final int width;
  @override
  final String format;

  factory _$Metadata([void Function(MetadataBuilder) updates]) =>
      (new MetadataBuilder()..update(updates)).build();

  _$Metadata._({this.height, this.width, this.format}) : super._() {
    BuiltValueNullFieldError.checkNotNull(height, 'Metadata', 'height');
    BuiltValueNullFieldError.checkNotNull(width, 'Metadata', 'width');
    BuiltValueNullFieldError.checkNotNull(format, 'Metadata', 'format');
  }

  @override
  Metadata rebuild(void Function(MetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataBuilder toBuilder() => new MetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Metadata &&
        height == other.height &&
        width == other.width &&
        format == other.format;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, height.hashCode), width.hashCode), format.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Metadata')
          ..add('height', height)
          ..add('width', width)
          ..add('format', format))
        .toString();
  }
}

class MetadataBuilder implements Builder<Metadata, MetadataBuilder> {
  _$Metadata _$v;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  String _format;
  String get format => _$this._format;
  set format(String format) => _$this._format = format;

  MetadataBuilder();

  MetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _height = $v.height;
      _width = $v.width;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Metadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Metadata;
  }

  @override
  void update(void Function(MetadataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Metadata build() {
    final _$result = _$v ??
        new _$Metadata._(
            height: BuiltValueNullFieldError.checkNotNull(
                height, 'Metadata', 'height'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, 'Metadata', 'width'),
            format: BuiltValueNullFieldError.checkNotNull(
                format, 'Metadata', 'format'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
