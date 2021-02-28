import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/colorbloc.dart';

//
// Widget para exibir a cor
//
class WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Criando WidgetB");
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) {
        print("Recriando ListTile do WindgetB");
        return Container(
          color: color,
          child: ListTile(
            title: Text('Cor '),
          ),
        );
      },
    );
  }
}
