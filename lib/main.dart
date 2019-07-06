import 'package:flutter/material.dart';
import 'pages/Home.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData( primarySwatch: Colors.blue ),
      home: Home( title: 'FlutterApp Login' ),
    );
  }

}


