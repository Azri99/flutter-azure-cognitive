library description;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testRun/src/model/captions.dart';

part 'description.g.dart';

abstract class Description implements Built<Description, DescriptionBuilder> {
  Description._();

  factory Description([updates(DescriptionBuilder b)]) = _$Description;

  @BuiltValueField(wireName: 'tags')
  BuiltList<String> get tags;
  @BuiltValueField(wireName: 'captions')
  BuiltList<Captions> get captions;

  static Serializer<Description> get serializer => _$descriptionSerializer;
}
