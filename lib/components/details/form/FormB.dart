import 'package:flutter/material.dart';

class FormB extends StatefulWidget
{
  FormB({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormBState createState() => _FormBState();
}

class _FormBState extends State<FormB> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
            validator: (value) {

              if (value.isEmpty) {
                return '2 - Enter some text';
              }

              return null;

            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );

  }

}

