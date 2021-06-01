part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  final int count;
  const CounterState({required this.count});
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(count: 0);
}

class CounterUpdated extends CounterState {
  const CounterUpdated({required int updatedCount}) : super(count: updatedCount);
}
