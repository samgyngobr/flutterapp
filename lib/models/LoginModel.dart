import '../config/globals.dart' as globals;
import 'dart:async';

class LoginModel
{
  /*
  LoginModel( email, pass )
  {
    print( globals.url['login']);

    //Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));


      var modal = new Stack(
        children: [
          new Opacity(
            opacity: 0.3,
            child: const ModalBarrier(dismissible: false, color: Colors.grey),
          ),
          new Center(
            child: new CircularProgressIndicator(),
          ),
        ],
      );

    print(email);
    print(pass);

  }
  */

  Future loga( email, pass ) async
  {
    print( globals.url['login'] );

    print(email);
    print(pass);

    return true;
  }

}
