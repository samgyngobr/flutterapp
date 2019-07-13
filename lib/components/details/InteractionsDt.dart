import 'package:flutter/material.dart';

class InteractionsDt extends StatefulWidget
{
  InteractionsDt({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InteractionsDtState createState() => _InteractionsDtState();
}

class _InteractionsDtState extends State<InteractionsDt> {

  @override
  Widget build(BuildContext context)
  {
    return Container(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              title: Text( 'TItulo' ),
              subtitle: Text( 'subtitulo' ),
              leading: Icon( Icons.whatshot, color: Colors.red, size: 40.0, ),
              trailing: Icon( Icons.arrow_right, size: 40.0 ),
            )
        )
    );

  }

}





