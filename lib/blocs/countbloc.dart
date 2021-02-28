import 'package:flutter_bloc/flutter_bloc.dart';

enum CountEvent { increment, decrement }

class CountBloc extends Bloc<CountEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CountEvent event) async* {
    switch (event) {
      case CountEvent.decrement:
        yield state - 1;
        break;
      case CountEvent.increment:
        yield state + 1;
        break;
    }
  }
}