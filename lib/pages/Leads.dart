import 'package:flutter/material.dart';
import '../components/DrawerMenu.dart';

class Leads extends StatefulWidget
{
  Leads({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LeadsState createState() => _LeadsState();
}

class _LeadsState extends State<Leads> {


  final List<String> _listViewData = [
    "Inducesmile.com",
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
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

          return ListTile(
            title: Text(_listViewData[index]),
          );

        },
      ),

      drawer: DrawerMenu()

    );
  }
}




