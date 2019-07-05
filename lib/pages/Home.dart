import 'package:flutter/material.dart';
import '../components/DrawerMenu.dart';


class Home extends StatefulWidget
{
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {


  final cardA = Card(
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ),
    elevation: 3,
    color: Colors.blue,
    child: Container(
      child: Column(
        children: <Widget>[

          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            title: Text( 'The Enchanted Nightingale', style: TextStyle( color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold ) ),
            subtitle: Text( 'Music by Julie Gable. Lyrics by Sidney Stein.', style: TextStyle( color: Colors.white, fontSize: 18 ) ),
          ),

        ]
      )
    )
  );


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


  final cardC = Container(

    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8.0),
    ),

    child: Row(
      children: <Widget>[

        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text( "Title", style: TextStyle( color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold ) ),
                Text( "Subtitle?", style: TextStyle( color: Colors.white, fontSize: 18 ) ),

              ],
            )
          ),
        ),

        Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[

                Text( "1", style: TextStyle( color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold ) ),

              ],
            )
        ),

      ],
    ),
  );


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar( title: Text("Home") ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[

              cardA,
              SizedBox(height: 15.0),
              cardB,
              SizedBox(height: 15.0),
              cardC,
              SizedBox(height: 15.0),

            ]
          ),
        )
      ),

      drawer: DrawerMenu()

    );
  }
}
