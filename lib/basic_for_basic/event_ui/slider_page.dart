
import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderAppState createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderPage> {
  String _message;
  double _value = 1.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = "OK";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
//      body: Column(
//        children: <Widget>[
//
//          Text(_message),
//          SizedBox(height: 80.0,),
//          Transform(
//            alignment: FractionalOffset.center,
//            transform: Matrix4.identity()..rotateZ(90 * 3.14 / 180),
//            child: Slider(
//              onChanged: sliderChanged,
//              min: 0.0,
//              max: 100.0,
//              divisions: 10,
//              label: _message,
//              value: _value,
//            ),
//          ),
//          Transform(
//            alignment: FractionalOffset.center,
//            transform: Matrix4.identity()..rotateZ(90 * 3.14 / 180),
//            child: Slider(
//              onChanged: sliderChanged,
//              min: 0.0,
//              max: 100.0,
//              divisions: 10,
//              label: _message,
//              value: _value,
//            ),
//          )
//
//        ],
//      ),
      body: new Container(
        child: new Transform(
          alignment: FractionalOffset.center,
          // Rotate sliders by 90 degrees
          transform: new Matrix4.identity()..rotateZ(90 * 3.1415927 / 180),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Slider(
                value: _value.toDouble(),
                min: 1.0,
                max: 50.0,
                divisions: 50,
                label: '$_value',
                onChanged: (double value) {
                  setState(() {
                    _value = value.floorToDouble();
                    _message = value.toString();
                  });
                },
              ),
              new Slider(
                value: _value.toDouble(),
                min: 1.0,
                max: 50.0,
                divisions: 50,
                label: '$_value',
                onChanged: (double value) {
                  setState(() {
                    _value = value.floorToDouble();
                    _message = value.toString();
                  });
                },
              ),
            ],
          ),

        ),
      ),
    );
  }

  void sliderChanged(double value) {
    setState(() {
      _value = value.floorToDouble();
      _message = value.toString();
    });
  }
}
