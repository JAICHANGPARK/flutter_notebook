import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class FingerMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage("finger"),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  MainPage(this.title);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool _canCheckBiometric = false;
  String _authorizedOrNot = "Not Authorized";
  List<BiometricType> _availableBiometrics = List<BiometricType>();

  Future<void> _checkBiometric() async {
    bool canCheckBiometric = false;

    try {
      canCheckBiometric = await _localAuthentication.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _canCheckBiometric = canCheckBiometric;
    });
  }

  Future<void> _getListOfBiometricType() async {
    List<BiometricType> listOfBiometric;

    try {
      listOfBiometric = await _localAuthentication.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _availableBiometrics = listOfBiometric;
    });
  }

  Future<void> _authorizeNow() async {
    String isAuthorized = "Not Authorized";

    try {
      await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Pls authenticate to complete your transaction",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _availableBiometrics = listOfBiometric;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text(widget.title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Biometric"),
            RaisedButton(
              onPressed: _checkBiometric,
              child: Text("Check Biometric"),
              color: Colors.red,
              colorBrightness: Brightness.light,
            ),
            Text("List Of Biometric : ${_availableBiometrics.toString()}"),
            RaisedButton(
              onPressed: _getListOfBiometricType,
              child: Text("List of Biometric Types"),
              color: Colors.red,
              colorBrightness: Brightness.light,
            ),
            Text("Authorized : ${_authorizedOrNot}"),
            RaisedButton(
              onPressed: _authorizeNow,
              child: Text("Authorize now"),
              colorBrightness: Brightness.light,
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
