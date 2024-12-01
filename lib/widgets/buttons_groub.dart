import 'package:basket_ball_app/cubits/counter_cubit.dart';
import 'package:basket_ball_app/widgets/custom_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsGroub extends StatelessWidget {
  const ButtonsGroub({super.key, required this.team});

  final String team;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          buttonText: 'Add 1 Point',
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: team, buttonNumber: 1);
          },
        ),
        const SizedBox(
          height: 25,
        ),
        CustomButton(
          buttonText: 'Add 2 Point',
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: team, buttonNumber: 2);
          },
        ),
        const SizedBox(
          height: 25,
        ),
        CustomButton(
          buttonText: 'Add 3 Point',
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: team, buttonNumber: 3);
          },
        ),
      ],
    );
  }
}
