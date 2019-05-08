import 'package:beerdelivery1/login_firebase/authentication_bloc/authentication_bloc.dart';
import 'package:beerdelivery1/login_firebase/authentication_bloc/authentication_event.dart';
import 'package:beerdelivery1/pages/home/widgets/choose_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  HomeScreen({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello $name!'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).dispatch(
                LoggedOut(),
              );
            },
          )
        ],
      ),
      body: ChooseContainer(),
    );
  }
}
