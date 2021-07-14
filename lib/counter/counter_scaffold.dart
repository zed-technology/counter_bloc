import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
import 'counter_form.dart';

class CounterScaffold extends StatelessWidget {
  const CounterScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Counter BloC Demo'),
        ),
        body: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: const CounterForm(),
        ));
  }
}
