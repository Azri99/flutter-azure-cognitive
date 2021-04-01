import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:testRun/src/model/image_vision.dart';
import 'package:testRun/src/model/serializers.dart';
import 'package:http/http.dart' as http;

class MyImageCapture extends ChangeNotifier {
  File _file;
  ImageVision _imageVision;

  File get file => _file;
  ImageVision get imageVision => _imageVision;

  Future getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) _file = File(pickedFile.path);
    notifyListeners();
    await getAnalisis();
  }

  Future getAnalisis() async {
    final uri =
        "https://YOUR-PROJECT-NAME.cognitiveservices.azure.com/vision/v3.1/analyze?visualFeatures=Categories,Description&details=Landmarks";
    final respon = await http.post(
      uri,
      body: await _file.readAsBytes(),
      headers: {
        'Ocp-Apim-Subscription-Key': 'API-KEY-HIRE',
        'Content-Type': 'application/octet-stream'
      },
    );
    print(respon.body);
    _imageVision = serializers.deserializeWith(
        ImageVision.serializer, jsonDecode(respon.body));
    notifyListeners();
  }
}
