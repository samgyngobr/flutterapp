import '../config/globals.dart' as globals;

class LoginModel
{
  LoginModel( email, pass )
  {
    print( globals.url['login']);

    //Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
    print(email);
    print(pass);
  }
}
