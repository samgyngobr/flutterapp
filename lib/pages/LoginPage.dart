import 'package:flutter/material.dart';
import '../pages/Home.dart';


class LoginPage extends StatefulWidget {

  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {


    final emailField = TextField(
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "E-mail",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );


    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Senha",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );


    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color.fromRGBO(89, 130, 196, 1),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );

        },
        child: Text(
          "LOGIN",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )
        ),
      ),
    );


    final cardForm = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      elevation: 6,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
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
      ),
    );


    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(

            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),

            child: IntrinsicHeight(
              child: Container(
                //color: Color.fromRGBO(89, 130, 196, 1),

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(117, 116, 182, 1),
                      Color.fromRGBO(30, 159, 224, 1)
                    ]
                  )
                ),

                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(
                        height: 155.0,
                        child: Image.asset("assets/android.png"),
                      ),

                      cardForm,

                    ],
                  ),
                ),

              ),
            ),

          ),
        );
      },
    );
  }


}