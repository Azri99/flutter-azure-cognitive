import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:testRun/src/model/image_vision.dart';
import 'package:testRun/src/provider/image.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

//first dia ambil gambar
//second dia papar
final _imagePicker = ChangeNotifierProvider<MyImageCapture>((ref) {
  return MyImageCapture();
});

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final image = watch(_imagePicker);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ideaa Cuti version covid19 x.x.0'),
        ),
        body: Column(children: [
          Expanded(
              flex: 2,
              child: image.file == null
                  ? Text('Image Hire')
                  : Image.file(image.file)),
          Expanded(
            child: image.imageVision == null
                ? Text('No Data')
                : Text(image.imageVision.description.captions.asList()[0].text,
                    style: TextStyle(fontSize: 20)),
          ),
          Expanded(
              flex: 3,
              child: image.imageVision == null
                  ? Text('No Data')
                  : ListView.builder(
                      itemCount: image.imageVision.description.tags.length,
                      itemBuilder: (context, index) {
                        return _listView(
                            image.imageVision.description.tags.asList()[index]);
                      }))
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await image.getImage();
          },
          child: Icon(Icons.camera),
        ),
      ),
    );
  }

  Widget _listView(String data) {
    return Card(
      child: ListTile(
        title: Text(data),
      ),
    );
  }
}
