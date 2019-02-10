



import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class FlutterBleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlePage(),
    );
  }
}


class BlePage extends StatefulWidget {
  @override
  _BlePageState createState() => _BlePageState();
}

class _BlePageState extends State<BlePage> {

  FlutterBlue _flutterBlue = FlutterBlue.instance;

  StreamSubscription _scanSubscription;
  Map<DeviceIdentifier, ScanResult> scanResults = new Map();
  bool isScanning = false;

  StreamSubscription _stateSubscription;
  BluetoothState state = BluetoothState.unknown;

  BluetoothDevice device;
  bool get isConnected => (device != null);
  StreamSubscription deviceConnection;
  StreamSubscription deviceStateSubscription;
  List<BluetoothService> services = new List();

  Map<Guid, StreamSubscription> valueChangedSubscription = {};
  BluetoothDeviceState deviceState = BluetoothDeviceState.disconnected;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _flutterBlue.state.then((s){
      setState(() {
        state = s;
      });
    });

    _stateSubscription = _flutterBlue.onStateChanged().listen(
        (s){
          setState(() {
            state = s;
          });
        }
    );
  }

  @override
  void dispose() {

    _stateSubscription?.cancel();
    _stateSubscription = null;

    _scanSubscription?.cancel();
    _scanSubscription = null;

    deviceConnection?.cancel();
    deviceConnection = null;

    super.dispose();
  }
  
  _startScan(){
    _scanSubscription = _flutterBlue.scan(
      timeout: const Duration(seconds: 5),
    ).listen((scanResult){
      print('localName : ${scanResult.advertisementData.localName}');
      print('manufactureData : ${scanResult.advertisementData.manufacturerData}');
      print('service : ${scanResult.advertisementData.serviceData}');

      setState(() {
        scanResults[scanResult.device.id] = scanResult;
      });

    }, onDone: _stopScan);


    setState(() {
      isScanning = true;
    });
  }


  _stopScan(){
    _scanSubscription?.cancel();
    _scanSubscription = null;
    setState(() {
      isScanning = false;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();

  }
}











