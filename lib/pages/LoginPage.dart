import 'package:flutter/material.dart';
import '../models/LoginModel.dart';


class LoginPage extends StatefulWidget {

  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}


// https://flutter.dev/docs/cookbook/forms/validation
class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "E-mail",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
      validator: (value) {
        if (value.isEmpty)
        {
          return 'Campo Obrigatorio!';
        }
        return null;
      }
    );


    final passwordField = TextFormField(
      obscureText: true,
      controller: _senhaController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Senha",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Campo Obrigatorio!';
        }
        return null;
      }
    );


    final loginButon = Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(30.0),
      color: Color.fromRGBO(89, 130, 196, 1),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

          FocusScope.of(context).requestFocus(new FocusNode());

          if (_formKey.currentState.validate() == true)
          {
            LoginModel(_emailController.text,_senhaController.text);
          }

        },

        child: Text(
          "LOGIN",
          textAlign: TextAlign.center,
          style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold )
        ),

      ),
    );


    final cardForm = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      elevation: 4,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 15.0),
                emailField,
                SizedBox(height: 35.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButon,
                SizedBox(height: 15.0),
              ]
            )
          )
        )
      ),
    );


    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child:  SingleChildScrollView(
            child: ConstrainedBox(

              constraints: BoxConstraints( minHeight: viewportConstraints.maxHeight ),

              child: IntrinsicHeight(
                child: Container(

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [ Color.fromRGBO(117, 116, 182, 1), Color.fromRGBO(30, 159, 224, 1) ]
                    )
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        SizedBox( height: 155.0, child: Image.asset("assets/android.png") ),

                        cardForm,

                      ],
                    ),
                  ),

                ),
              ),

            ),
          )
        );

      },
    );
  }


}