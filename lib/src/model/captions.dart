library captions;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'captions.g.dart';

abstract class Captions implements Built<Captions, CaptionsBuilder> {
  Captions._();

  factory Captions([updates(CaptionsBuilder b)]) = _$Captions;

  @BuiltValueField(wireName: 'text')
  String get text;
  @BuiltValueField(wireName: 'confidence')
  double get confidence;

  static Serializer<Captions> get serializer => _$captionsSerializer;
}
