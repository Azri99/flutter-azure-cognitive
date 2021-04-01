# testRun

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

curl -H "Ocp-Apim-Subscription-Key: 801a01d8651d4f75b7a2a5927abf591d" -H "Content-Type: application/json" "https://flutterplay.cognitiveservices.azure.com/vision/v3.1/analyze?visualFeatures=Categories,Description&details=Landmarks" -d "{\"url\":\"http://upload.wikimedia.org/wikipedia/commons/3/3c/Shaki_waterfall.jpg\"}"


visualFeatures=Categories,Description&details=Landmarks

{
  "categories": [
    {
      "name": "outdoor_water",
      "score": 0.9921875,
      "detail": {
        "landmarks": []
      }
    }
  ],
  "description": {
    "tags": [
      "nature",
      "water",
      "waterfall",
      "outdoor",
      "rock",
      "mountain",
      "rocky",
      "hillside"
    ],
    "captions": [
      {
        "text": "a waterfall in a forest",
        "confidence": 0.47947439551353455
      }
    ]
  },
  "requestId": "103e63d5-9d9c-4c49-8e7f-feb69e40a985",
  "metadata": {
    "height": 959,
    "width": 1280,
    "format": "Jpeg"
  }
}



dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.0
  image_picker: ^0.6.7+22

  riverpod: ^0.12.4
  hooks_riverpod: ^0.12.4
  flutter_hooks: ^0.15.0
  built_value: ^8.0.0-nullsafety.0
dev_dependencies:
  flutter_test:
    sdk: flutter
  analyzer: ^0.40.6
  build_runner: ^1.11.1
  built_value_generator: ^8.0.0-nullsafety.0