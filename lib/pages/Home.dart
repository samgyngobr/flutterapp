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



  final List<Map<String, dynamic>> _listViewData = [
    {
      "title"  : "Titulo A",
      "content": "Conteudo A",
      "status" : "Atendimento",
      "date"   : "12/04/2017"
    },
    {
      "title"  : "Titulo B",
      "content": "Conteudo B",
      "status" : "Atendimento",
      "date"   : "12/04/2017"
    },
    {
      "title"  : "Titulo C",
      "content": "Conteudo C",
      "status" : "Atendimento",
      "date"   : "12/04/2017"
    },
    {
      "title"  : "Titulo D",
      "content": "Conteudo D",
      "status" : "Atendimento",
      "date"   : "12/04/2017"
    },
  ];






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

              SizedBox(
                // you may want to use an aspect ratio here for tablet support
                height: 100.0,
                child: PageView.builder(
                  // store this controller in a State to save the carousel scroll position
                  itemCount: _listViewData.length,
                  controller: PageController( viewportFraction: 0.9 ),
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: _card( _listViewData[itemIndex] ),
                    );
                  },
                ),
              )

            ]
          ),
        )
      ),

      drawer: DrawerMenu()

    );
  }




  Widget _card( Map<String, dynamic> item ) {
    return Container(

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

                    Text( item['title']  , style: TextStyle( color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold ) ),
                    Text( item['content'], style: TextStyle( color: Colors.white, fontSize: 18 ) ),

                  ],
                )
            ),
          ),

          Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[

                  Text( item['date'], style: TextStyle( color: Colors.white, fontSize: 16 ) ),

                ],
              )
          ),

        ],
      ),

    );
  }




}
