import 'dart:async';
import 'package:flutter/material.dart';

import './Home.dart';


class SplashScreen extends StatefulWidget {

  SplashScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  var _visible = true;


  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push( context, MaterialPageRoute( builder: (context) => Home() ) );
    //Navigator.of(context).pushReplacementNamed('Home');
  }


  @override
  void initState() {
    super.initState();
    setState(() {
      _visible = !_visible;
    });
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(

            constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),

            child: IntrinsicHeight(
              child: Container(

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(117, 116, 182, 1),
                          Color.fromRGBO(30, 159, 224, 1)
                        ]
                    )
                ),

                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(height: 155.0, child: Image.asset("assets/android.png")),

                    ],
                  ),
                ),

              ),
            ),

          ),

        );
      },
    );
  }


}