import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class MyMLKit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File pickedImage;
  bool isLoaded = false;



  Future pickImage() async {

    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      pickedImage = tempStore;
      isLoaded = true;
    });

  }
  
  Future readText() async{
    FirebaseVisionImage myImage = FirebaseVisionImage.fromFile(pickedImage);
    TextRecognizer textRecognizer = FirebaseVision.instance.textRecognizer();
    VisionText readText = await textRecognizer.processImage(myImage);

    for(TextBlock block in readText.blocks){
      for(TextLine line in block.lines){
        for(TextElement word in line.elements){
          print(word.text);

        }
      }
    }
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          isLoaded ? Center(
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: 
                FileImage(pickedImage),fit: BoxFit.cover)
              ),
            ),
          ): Container(),
          SizedBox(height: 10.0,),

          RaisedButton(
            child: Text('Pick Image'),
            onPressed: pickImage,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            child: Text('Read Text'),
            onPressed: readText,
          )
        ],
      ),
    );
  }
}
