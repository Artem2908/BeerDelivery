import 'package:beerdelivery1/login_firebase/repositories/user_repository.dart';
import 'package:beerdelivery1/pages/registration/register_screen.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Don`t have an account?'),
        FlatButton(
          child: Text('Sign Up', style: TextStyle(color: Colors.green)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return RegisterScreen(userRepository: _userRepository);
              }),
            );
          },
        ),
      ],
    );
  }
}
