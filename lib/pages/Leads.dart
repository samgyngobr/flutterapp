import 'package:flutter/material.dart';
import '../components/DrawerMenu.dart';
import './Details.dart';

class Leads extends StatefulWidget
{
  Leads({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LeadsState createState() => _LeadsState();
}

class _LeadsState extends State<Leads> {

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

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar( title: Text("Leads") ),

      body: ListView.separated(
        itemCount: _listViewData.length,
        separatorBuilder: (context, index) => Divider(height: 1.0, color: Colors.grey),
        itemBuilder: (context, index) {

          /*
          return ListTile(
            title: Text( _listViewData[index]['title'] ),
            subtitle: Text( _listViewData[index]['content'] ),
            leading: Icon( Icons.whatshot, color: Colors.red, size: 40.0, ),
            trailing: Icon( Icons.arrow_right, size: 40.0 ),
          );
          */

          return GestureDetector(
            onTap: () {

              Navigator.push( context, MaterialPageRoute( builder: (context) => Details() ) );

            },
            child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon( Icons.whatshot, color: Colors.red, size: 40.0 )
                            ),
                          )
                        ]
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text( _listViewData[index]['title'], style: TextStyle( fontSize: 18 ) ),
                            ),
                          ),

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text( _listViewData[index]['content'], style: TextStyle( fontSize: 14 ) ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text( _listViewData[index]['status'], style: TextStyle( fontSize: 14 ) ),
                          ),
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text( _listViewData[index]['date'], style: TextStyle( fontSize: 14 ) ),
                          ),
                        ),

                      ],
                    ),

                  ],
                )
            )


          );


        },
      ),

      drawer: DrawerMenu(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('new');
        },
        tooltip: 'Novo',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }

}




