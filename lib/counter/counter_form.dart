import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterForm extends StatelessWidget {
  const CounterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterBloc, CounterState>(
      listener: (context, state) {
        print('state: ${state.count}');
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextButton(
                onPressed: () => context.read<CounterBloc>().add(Decrement()),
                child: const Text(
                  "-1",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                )),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) => Text(
                '${state.count}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
                onPressed: () => context.read<CounterBloc>().add(Increment()),
                child: const Text(
                  "+1",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
