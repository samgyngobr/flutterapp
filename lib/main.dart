import 'package:flutter/material.dart';

//import 'pages/Home.dart';
import 'pages/SplashScreen.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData( primarySwatch: Colors.blue ),
      home : SplashScreen(),
      /*
      routes: <String, WidgetBuilder>{
        'Home'         : ( BuildContext context ) => Home( title: 'FlutterApp Login' ),
        'SplashScreen' : ( BuildContext context ) => SplashScreen(),
      },
      initialRoute: 'SplashScreen',
      */
    );
  }

}


