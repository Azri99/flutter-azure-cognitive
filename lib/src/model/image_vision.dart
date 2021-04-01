library image_vision;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testRun/src/model/categories.dart';
import 'package:testRun/src/model/description.dart';
import 'package:testRun/src/model/metadata.dart';

part 'image_vision.g.dart';

abstract class ImageVision implements Built<ImageVision, ImageVisionBuilder> {
  ImageVision._();

  factory ImageVision([updates(ImageVisionBuilder b)]) = _$ImageVision;

  @BuiltValueField(wireName: 'categories')
  BuiltList<Categories> get categories;
  @BuiltValueField(wireName: 'description')
  Description get description;
  @BuiltValueField(wireName: 'requestId')
  String get requestId;
  @BuiltValueField(wireName: 'metadata')
  Metadata get metadata;

  static Serializer<ImageVision> get serializer => _$imageVisionSerializer;
}
