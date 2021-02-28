import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/countbloc.dart';
import 'blocs/colorbloc.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CountBloc>(
            create: (context) => CountBloc(),
          ),
          BlocProvider<ColorBloc>(
            create: (context) => ColorBloc(),
          ),
        ],
        child: Home(),
      ),
    );
  }
}
