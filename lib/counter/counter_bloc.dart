import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      final newCount = state.count + 1;
      yield CounterState(newCount);
    } else if (event is Decrement) {
      final newCount = state.count - 1;
      yield CounterState(newCount);
    }
  }
}
