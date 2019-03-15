import 'dart:async';
import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyFaceMlKit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  File pickedImage;
  bool isImageLoaded = false;
  var _result = "";
  List<Face> _faces;

  Future pickImage() async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = tempStore;
      isImageLoaded = true;
    });
  }

  Future getImages() async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (mounted) {
      setState(() {
        pickedImage = tempStore;
      });
    }
    FirebaseVisionImage image = FirebaseVisionImage.fromFile(tempStore);
    FaceDetector faceDetector = FirebaseVision.instance.faceDetector(
      FaceDetectorOptions(
        mode: FaceDetectorMode.accurate,
        enableLandmarks: true
      )
    );
    List wowFace = await faceDetector.processImage(image);
    setState(() {
      if (wowFace.isEmpty) {
        print('No face Detected');
      } else {
        _faces = wowFace;
        for (Face list in _faces) {
          print(list.toString());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Face Detector"),
      ),
      body: pickedImage != null
          ? ImagesAndFaces(
              imageFile: pickedImage,
              faces: _faces,
            )
          : Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: getImages,
        tooltip: 'Pick an Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

class ImagesAndFaces extends StatelessWidget {
  final File imageFile;
  final List<Face> faces;

  ImagesAndFaces({this.imageFile, this.faces});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Container(
              constraints: BoxConstraints.expand(),
              child: Image.file(
                imageFile,
                fit: BoxFit.cover,
              )),
        ),
        Flexible(
          flex: 1,
          child: ListView(
            children: faces.map<Widget>((f) => FaceCoordinates(f)).toList(),
          ),
        )
      ],
    );
  }
}

class FaceCoordinates extends StatelessWidget {
  FaceCoordinates(this.face);

  final Face face;

  @override
  Widget build(BuildContext context) {
    final pos = face.boundingBox;
    final FaceLandmark leftEar = face.getLandmark(FaceLandmarkType.leftEar);
    return ListTile(
      title: Text(' (${pos.top}, ${pos.left}), (${pos.bottom}, ${pos.right}) , ${leftEar}'),
    );
  }
}
