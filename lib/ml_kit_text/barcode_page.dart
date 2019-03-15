


import 'dart:async';
import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/ml_kit_text/face_page.dart';
import 'package:image_picker/image_picker.dart';

class MyMLKitBarcode extends StatelessWidget {
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
  Future pickImage() async{
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = tempStore;
      isImageLoaded = true;
    });
  }
  Future readText() async{
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
    TextRecognizer recognizer = FirebaseVision.instance.textRecognizer();
    VisionText readText = await recognizer.processImage(ourImage);
    for(TextBlock block in readText.blocks){
      for(TextLine line in block.lines){
        for(TextElement element in line.elements){
          print(element.text);
        }
      }
    }
  }

  Future decode() async{
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
    BarcodeDetector barcodeDetector = FirebaseVision.instance.barcodeDetector();
    List barcodes = await barcodeDetector.detectInImage(ourImage);

    for(Barcode readableCode in barcodes){
      print(readableCode.displayValue);
      setState(() {
        _result = readableCode.displayValue;
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.tag_faces, color: Colors.black,),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> MyFaceMlKit())
              );

            },
          )
        ],
        title: Text("ML KIT BARCODE", style: TextStyle(
          color: Colors.black
        ),),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Text(_result),
          SizedBox(height: 120,),
          isImageLoaded? Center(child:
            Container(
              height: 200.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(image:
                FileImage(pickedImage),
                fit: BoxFit.cover)
              ),
            ),):
              Container(),

          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text('Picked an image'),
            onPressed: pickImage,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text("Read Text"),
            onPressed: readText,
          ),
          SizedBox(height: 20.0,),
          RaisedButton(
            child: Text("Read Barcode"),
            onPressed: decode,
          )

        ],
      ),
    );
  }
}














