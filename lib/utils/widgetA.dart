import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/countbloc.dart';

//
// Widget para exibir contador
//
class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Criando WidgetA");
    return BlocBuilder<CountBloc, int>(
      builder: (context, count) {
        print("Recriando texto do WindgetA");
        return ListTile(
          title: Text('Contador $count'),
        );
      },
    );
  }
}