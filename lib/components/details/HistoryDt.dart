import 'package:flutter/material.dart';

class HistoryDt extends StatefulWidget
{
  HistoryDt({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HistoryDtState createState() => _HistoryDtState();
}

class _HistoryDtState extends State<HistoryDt> {




  final cardB = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      elevation: 6,
      child: Container(
          child: Column(
              children: <Widget>[

                const ListTile(
                  title: Text('The Enchanted Nightingale 2'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein. 2'),
                ),

              ]
          )
      )
  );




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[

            cardB,
            SizedBox(height: 15.0),
            cardB,
            SizedBox(height: 15.0),
            cardB,
            SizedBox(height: 15.0),

          ]
        ),
      )
    );
  }

}





