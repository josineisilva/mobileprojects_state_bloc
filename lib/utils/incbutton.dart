import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/countbloc.dart';

class incButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountBloc countBloc = BlocProvider.of<CountBloc>(context);
    print("Criando incButton");
    return RaisedButton(
      child: Icon(Icons.add),
      onPressed: () => countBloc.add(CountEvent.increment),
    );
  }
}
