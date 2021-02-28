import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/countbloc.dart';

class decButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountBloc countBloc = BlocProvider.of<CountBloc>(context);
    print("Criando decButton");
    return RaisedButton(
      child: Icon(Icons.remove),
      onPressed: () => countBloc.add(CountEvent.decrement),
    );
  }
}