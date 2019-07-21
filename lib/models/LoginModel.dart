import '../config/globals.dart' as globals;
import 'dart:async';

class LoginModel
{
  Future loga( email, pass ) async
  {
    print( globals.url['login'] );

    print(email);
    print(pass);

    return true;
  }

}
