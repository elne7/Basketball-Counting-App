import 'package:basket_ball_app/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void pointsReset(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }

}
