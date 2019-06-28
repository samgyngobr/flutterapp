import 'package:flutter/material.dart';

import '../pages/LoginPage.dart';
import '../pages/Leads.dart';
import '../pages/Home.dart';


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
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),

          ListTile(
            title: Text('Home'),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );

            },
          ),

          ListTile(
            title: Text('Leads'),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Leads()),
              );

            },
          ),

          ListTile(
            title: Text('Login'),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );

            },
          ),

        ],
      ),
    );

  }
}