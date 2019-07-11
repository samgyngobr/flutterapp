import 'package:flutter/material.dart';

import '../pages/LoginPage.dart';
import '../pages/Leads.dart';
import '../pages/Home.dart';
import '../pages/Lizt.dart';


class DrawerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(

        padding: EdgeInsets.zero,
        children: <Widget>[

          UserAccountsDrawerHeader(
            accountName: Text("User"),
            accountEmail: Text("mail@mail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.iOS ? Colors.blue : Colors.white,
              child: Text( "A", style: TextStyle( fontSize: 40.0 ) ),
            ),
          ),

          ListTile(
            title: Text('Home'),
            onTap: () {

              Navigator.push( context, MaterialPageRoute( builder: (context) => Home() ) );

            },
          ),

          Divider( height: 2.0 ),

          ListTile(
            title: Text('Leads'),
            onTap: () {

              Navigator.push( context, MaterialPageRoute( builder: (context) => Leads() ) );

            },
          ),

          Divider( height: 2.0 ),

          ListTile(
            title: Text('Listagem'),
            onTap: () {

              Navigator.push( context, MaterialPageRoute( builder: (context) => Lizt() ) );

            },
          ),

          Divider( height: 2.0 ),

          ListTile(
            title: Text('Logout'),
            onTap: () {

              Navigator.push( context, MaterialPageRoute( builder: (context) => LoginPage() ) );

            },
          ),

          Divider( height: 2.0 ),

        ],
      ),
    );

  }
}