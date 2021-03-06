import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/countbloc.dart';

//
// Widget para exibir contador
//
class WidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Criando WidgetC");
    return BlocBuilder<CountBloc, int>(
      builder: (context, count) {
        print("Recriando texto do WindgetC");
        return ListTile(
          title: Text('Contador $count'),
        );
      },
    );
  }
}