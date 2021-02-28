import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/colorbloc.dart';

class colorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    print("Criando colorButton");
    return RaisedButton(
      child: Text('Cor'),
      onPressed: () => colorBloc.add(ColorEvent.change),
    );
  }
}