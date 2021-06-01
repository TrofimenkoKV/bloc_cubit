import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void resetCounter() {
    emit(const CounterUpdated(updatedCount: 0));
  }

  void updateCounter() {
    var count = state.count;
    count++;
    emit(CounterUpdated(updatedCount: count));
  }

}
