library detail;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detail.g.dart';

abstract class Detail implements Built<Detail, DetailBuilder> {
  Detail._();

  factory Detail([updates(DetailBuilder b)]) = _$Detail;

  @BuiltValueField(wireName: 'landmarks')
  @nullable
  BuiltList<String> get landmarks;

  static Serializer<Detail> get serializer => _$detailSerializer;
}
