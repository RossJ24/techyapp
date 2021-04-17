import 'package:flutter/material.dart';
import 'package:techyapp/views/login.dart';
import './views/home.dart';

void main() {
  runApp(ADayAway());
}

class ADayAway extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Day Away',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "";
  bool loggedin = false;

  void logIn(String name) {
    setState(() {
      _name = name;
      loggedin = true;
    });
  }

  Widget mapStateToView() {
    if (loggedin) {
      return Home(name: _name);
    } else {
      return Login(callback: logIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return mapStateToView();
  }
}
