import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midi/flutter_midi.dart';
import 'package:tonic/tonic.dart';

class PianoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: PianoMain(),
    );
  }
}

class PianoMain extends StatefulWidget {
  @override
  _PianoMainState createState() => _PianoMainState();
}

class _PianoMainState extends State<PianoMain> {
  double _widthRatio = 0.0;
  bool _showLabels = true;

  double get keyWidth => 80 + (80 * _widthRatio);

  @override
  void initState() {
    FlutterMidi.unmute();
    rootBundle.load('assets/sound/Wii_Grand_Piano.sf2').then((sf2) {
      FlutterMidi.prepare(sf2: sf2, name: "GeneralUser.sf2");
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("piano App"),
      ),
      drawer: Drawer(
        child: SafeArea(
            child: ListView(
          children: <Widget>[
            Container(
              height: 20.0,
            ),
            ListTile(
              title: Text("Change Width"),
            ),
            Slider(
              activeColor: Colors.white,
              inactiveColor: Colors.red,
              min: 0.0,
              max: 1.0,
              value: _widthRatio,
              onChanged: (double value) => setState(() => _widthRatio = value),
            ),
            Divider(),
            ListTile(
              title: Text("Show Labels"),
              trailing: Switch(
                  value: _showLabels,
                  onChanged: (bool value) {
                    setState(() {
                      _showLabels = value;
                    });
                  }),
            ),
            Divider(),
          ],
        )),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final int i = index * 12;

          return SafeArea(
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildKey(24 + i, false),
                    _buildKey(26 + i, false),
                    _buildKey(28 + i, false),
                    _buildKey(29 + i, false),
                    _buildKey(31 + i, false),
                    _buildKey(33 + i, false),
                    _buildKey(35 + i, false),
                  ],
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 100,
                  top: 0.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: keyWidth * 0.5,
                      ),
                      _buildKey(25 + i, true),
                      _buildKey(27 + i, true),
                      Container(
                        width: keyWidth,
                      ),
                      _buildKey(30 + i, true),
                      _buildKey(32 + i, true),
                      _buildKey(34 + i, true),
                      Container(
                        width: keyWidth * 0.5,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildKey(int i, bool param1) {
    final pitchName = Pitch.fromMidiNumber(i).toString();
    final pianoKey = Stack(
      children: <Widget>[
        Semantics(
          button: true,
          hint: pitchName,
          child: Material(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            color: param1 ? Colors.black : Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
              highlightColor: Colors.grey,
              onTap: () {},
              onTapDown: (_) => FlutterMidi.playMidiNote(midi: i),
            ),
          ),
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 20.0,
            child: _showLabels
                ? Text(
                    pitchName,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: !param1 ? Colors.black : Colors.white),
                  )
                : Container()),
      ],
    );
    if (param1) {
      return Container(
        width: keyWidth,
        color: Colors.black,
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        padding: EdgeInsets.symmetric(horizontal: keyWidth * 0.1),
        child: Material(
          elevation: 6.0,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          shadowColor: Color(0x802196f3),
          child: pianoKey,
        ),
      );
    }

    return Container(
      width: keyWidth,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: pianoKey,
    );
  }
}
