// GENERATED CODE - DO NOT MODIFY BY HAND

part of captions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Captions> _$captionsSerializer = new _$CaptionsSerializer();

class _$CaptionsSerializer implements StructuredSerializer<Captions> {
  @override
  final Iterable<Type> types = const [Captions, _$Captions];
  @override
  final String wireName = 'Captions';

  @override
  Iterable<Object> serialize(Serializers serializers, Captions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'confidence',
      serializers.serialize(object.confidence,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Captions deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confidence':
          result.confidence = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Captions extends Captions {
  @override
  final String text;
  @override
  final double confidence;

  factory _$Captions([void Function(CaptionsBuilder) updates]) =>
      (new CaptionsBuilder()..update(updates)).build();

  _$Captions._({this.text, this.confidence}) : super._() {
    BuiltValueNullFieldError.checkNotNull(text, 'Captions', 'text');
    BuiltValueNullFieldError.checkNotNull(confidence, 'Captions', 'confidence');
  }

  @override
  Captions rebuild(void Function(CaptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaptionsBuilder toBuilder() => new CaptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Captions &&
        text == other.text &&
        confidence == other.confidence;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), confidence.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Captions')
          ..add('text', text)
          ..add('confidence', confidence))
        .toString();
  }
}

class CaptionsBuilder implements Builder<Captions, CaptionsBuilder> {
  _$Captions _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  double _confidence;
  double get confidence => _$this._confidence;
  set confidence(double confidence) => _$this._confidence = confidence;

  CaptionsBuilder();

  CaptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _confidence = $v.confidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Captions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Captions;
  }

  @override
  void update(void Function(CaptionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Captions build() {
    final _$result = _$v ??
        new _$Captions._(
            text:
                BuiltValueNullFieldError.checkNotNull(text, 'Captions', 'text'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, 'Captions', 'confidence'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
