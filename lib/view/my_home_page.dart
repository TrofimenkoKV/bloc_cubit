import 'package:bloc_cubit/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<CounterCubit, CounterState>(
      bloc: BlocProvider.of<CounterCubit>(context),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text("redux counter"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(
                    onPressed: () => BlocProvider.of<CounterCubit>(context).resetCounter(),
                    child: const Text("clear")
                )
              ],
            ),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterCubit>(context).updateCounter(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        )
      ),
    );
  }
}