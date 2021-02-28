import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

enum ColorEvent { change }

class ColorBloc extends Bloc<ColorEvent, Color> {
  @override
  Color get initialState => UniqueColorGenerator.getColor();

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    switch (event) {
      case ColorEvent.change:
        yield UniqueColorGenerator.getColor();
        break;
    }
  }
}

//
// Classe para gerar uma cor aleatoria
//
class UniqueColorGenerator {
  static Random random = Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}