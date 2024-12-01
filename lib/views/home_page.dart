import 'package:basket_ball_app/cubits/counter_cubit.dart';
import 'package:basket_ball_app/cubits/counter_states.dart';
import 'package:basket_ball_app/widgets/custom_button.dart';
import 'package:basket_ball_app/widgets/custom_team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Pointer Counter'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTeam(
                    teamName: 'Team A',
                    pointsCounter:
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                    team: 'A',
                  ),
                  SizedBox(
                    width: 2.0,
                    child: Center(
                      child: Container(
                        height: 420.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  CustomTeam(
                    teamName: 'Team B',
                    pointsCounter:
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                    team: 'B',
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                buttonText: 'Reset',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).pointsReset();
                },
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
