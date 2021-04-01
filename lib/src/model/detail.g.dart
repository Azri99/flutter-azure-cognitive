// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Detail> _$detailSerializer = new _$DetailSerializer();

class _$DetailSerializer implements StructuredSerializer<Detail> {
  @override
  final Iterable<Type> types = const [Detail, _$Detail];
  @override
  final String wireName = 'Detail';

  @override
  Iterable<Object> serialize(Serializers serializers, Detail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.landmarks;
    if (value != null) {
      result
        ..add('landmarks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Detail deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'landmarks':
          result.landmarks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Detail extends Detail {
  @override
  final BuiltList<String> landmarks;

  factory _$Detail([void Function(DetailBuilder) updates]) =>
      (new DetailBuilder()..update(updates)).build();

  _$Detail._({this.landmarks}) : super._();

  @override
  Detail rebuild(void Function(DetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailBuilder toBuilder() => new DetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Detail && landmarks == other.landmarks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, landmarks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Detail')..add('landmarks', landmarks))
        .toString();
  }
}

class DetailBuilder implements Builder<Detail, DetailBuilder> {
  _$Detail _$v;

  ListBuilder<String> _landmarks;
  ListBuilder<String> get landmarks =>
      _$this._landmarks ??= new ListBuilder<String>();
  set landmarks(ListBuilder<String> landmarks) => _$this._landmarks = landmarks;

  DetailBuilder();

  DetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _landmarks = $v.landmarks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Detail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Detail;
  }

  @override
  void update(void Function(DetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Detail build() {
    _$Detail _$result;
    try {
      _$result = _$v ?? new _$Detail._(landmarks: _landmarks?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'landmarks';
        _landmarks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Detail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
