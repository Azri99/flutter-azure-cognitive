// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Categories> _$categoriesSerializer = new _$CategoriesSerializer();

class _$CategoriesSerializer implements StructuredSerializer<Categories> {
  @override
  final Iterable<Type> types = const [Categories, _$Categories];
  @override
  final String wireName = 'Categories';

  @override
  Iterable<Object> serialize(Serializers serializers, Categories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(double)),
      'detail',
      serializers.serialize(object.detail,
          specifiedType: const FullType(Detail)),
    ];

    return result;
  }

  @override
  Categories deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'detail':
          result.detail.replace(serializers.deserialize(value,
              specifiedType: const FullType(Detail)) as Detail);
          break;
      }
    }

    return result.build();
  }
}

class _$Categories extends Categories {
  @override
  final String name;
  @override
  final double score;
  @override
  final Detail detail;

  factory _$Categories([void Function(CategoriesBuilder) updates]) =>
      (new CategoriesBuilder()..update(updates)).build();

  _$Categories._({this.name, this.score, this.detail}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Categories', 'name');
    BuiltValueNullFieldError.checkNotNull(score, 'Categories', 'score');
    BuiltValueNullFieldError.checkNotNull(detail, 'Categories', 'detail');
  }

  @override
  Categories rebuild(void Function(CategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesBuilder toBuilder() => new CategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categories &&
        name == other.name &&
        score == other.score &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), score.hashCode), detail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Categories')
          ..add('name', name)
          ..add('score', score)
          ..add('detail', detail))
        .toString();
  }
}

class CategoriesBuilder implements Builder<Categories, CategoriesBuilder> {
  _$Categories _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  DetailBuilder _detail;
  DetailBuilder get detail => _$this._detail ??= new DetailBuilder();
  set detail(DetailBuilder detail) => _$this._detail = detail;

  CategoriesBuilder();

  CategoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _score = $v.score;
      _detail = $v.detail.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Categories;
  }

  @override
  void update(void Function(CategoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Categories build() {
    _$Categories _$result;
    try {
      _$result = _$v ??
          new _$Categories._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Categories', 'name'),
              score: BuiltValueNullFieldError.checkNotNull(
                  score, 'Categories', 'score'),
              detail: detail.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'detail';
        detail.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Categories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
