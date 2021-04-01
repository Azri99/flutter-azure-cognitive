library metadata;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metadata.g.dart';

abstract class Metadata implements Built<Metadata, MetadataBuilder> {
  Metadata._();

  factory Metadata([updates(MetadataBuilder b)]) = _$Metadata;

  @BuiltValueField(wireName: 'height')
  int get height;
  @BuiltValueField(wireName: 'width')
  int get width;
  @BuiltValueField(wireName: 'format')
  String get format;

  static Serializer<Metadata> get serializer => _$metadataSerializer;
}
