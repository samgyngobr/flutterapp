import 'package:flutter/material.dart';
import '../components/DrawerMenu.dart';

class Lizt extends StatefulWidget
{
  Lizt({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LiztState createState() => _LiztState();
}

class _LiztState extends State<Lizt> {


  final List<Map<String, dynamic>> _listViewData = [
    {
      "title": "Titulo A",
      "content": "Conteudo A"
    },
    {
      "title": "Titulo B",
      "content": "Conteudo B"
    },
    {
      "title": "Titulo C",
      "content": "Conteudo C"
    },
    {
      "title": "Titulo D",
      "content": "Conteudo D"
    },
    {
      "title": "Titulo E",
      "content": "Conteudo E"
    },
    {
      "title": "Titulo F",
      "content": "Conteudo F"
    },
    {
      "title": "Titulo G",
      "content": "Conteudo G"
    },
    {
      "title": "Titulo H",
      "content": "Conteudo H"
    },
    {
      "title": "Titulo I",
      "content": "Conteudo I"
    },
    {
      "title": "Titulo J",
      "content": "Conteudo J"
    },
    {
      "title": "Titulo K",
      "content": "Conteudo K"
    },
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar( title: Text("Listagem") ),

      body: ListView.separated(

        itemCount: _listViewData.length,
        separatorBuilder: (context, index) => Divider(height: 1.0, color: Colors.grey),
        itemBuilder: (context, index) {

          return ExpansionTile(
            title: Text( _listViewData[index]['title'] ),
            children: <Widget>[

              ListTile( title: Text( _listViewData[index]['content'] ) ),

              RaisedButton(
                child: Text( 'Detalhes' ),
                onPressed: () { }
              )

            ]
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




