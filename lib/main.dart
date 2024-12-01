import 'package:basket_ball_app/cubits/counter_cubit.dart';
import 'package:basket_ball_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const PointerCounter());
}
class PointerCounter extends StatelessWidget {
   const PointerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
      ),
    );
  }
}
