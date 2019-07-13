import 'package:flutter/material.dart';

class FormDt extends StatefulWidget
{
  FormDt({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormDtState createState() => _FormDtState();
}

class _FormDtState extends State<FormDt> {


  selectForm( val )
  {
    switch ( val )
    {
      case 'One'  : return Container( child: Text( 'One' ) );
      case 'Two'  : return Container( child: Text( 'Two' ) );
      case 'Tree' : return Container( child: Text( 'Tree' ) );
      case 'Four' : return Container( child: Text( 'Four' ) );
    }
  }

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context)
  {
    return Container(
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[

            DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              onChanged: (String newValue) {
                setState( () {

                  dropdownValue = newValue;

                });
              },
              items: <String>['One', 'Two', 'Tree', 'Four'].map<DropdownMenuItem<String>>( (String value) {

                return DropdownMenuItem<String>( value: value, child: Text(value) );

              }).toList(),
            ),

            SizedBox(height: 15.0),

            selectForm( dropdownValue ),

          ],
        )
      ),
    );

  }

}





