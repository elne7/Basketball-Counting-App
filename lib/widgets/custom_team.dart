import 'package:auto_size_text/auto_size_text.dart';
import 'package:basket_ball_app/widgets/buttons_groub.dart';
import 'package:flutter/widgets.dart';

class CustomTeam extends StatelessWidget {
  const CustomTeam(
      {super.key,
      required this.teamName,
      required this.pointsCounter,
      required this.team});

  final String teamName;
  final String pointsCounter;
  final String team;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Text(
            teamName,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          SizedBox(
            child: AutoSizeText(
              pointsCounter,
              style: const TextStyle(
                fontSize: 150,
              ),
              maxFontSize: 100,
              minFontSize: 100,
            ),
          ),
          ButtonsGroub(team: team)
        ],
      ),
    );
  }
}
