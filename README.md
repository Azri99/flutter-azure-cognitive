
## A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

curl -H "Ocp-Apim-Subscription-Key: API-KEY-HIRE" -H "Content-Type: application/json" "https://PROJECT-NAME-HIRE.cognitiveservices.azure.com/vision/v3.1/analyze?visualFeatures=Categories,Description&details=Landmarks" -d "{\"url\":\"http://upload.wikimedia.org/wikipedia/commons/3/3c/Shaki_waterfall.jpg\"}"


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

