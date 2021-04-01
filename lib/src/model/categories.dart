library categories;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testRun/src/model/detail.dart';

part 'categories.g.dart';

abstract class Categories implements Built<Categories, CategoriesBuilder> {
  Categories._();

  factory Categories([updates(CategoriesBuilder b)]) = _$Categories;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'score')
  double get score;
  @BuiltValueField(wireName: 'detail')
  Detail get detail;

  static Serializer<Categories> get serializer => _$categoriesSerializer;
}
