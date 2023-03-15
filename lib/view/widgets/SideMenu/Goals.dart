import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'package:flutter_svg/svg.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(hDefaultPadding / 2),
          child: Text(
            "Goals",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals(textGoal: "Planning Stage"),
        buildGoals(textGoal: "Development"),
        buildGoals(textGoal: "Execution phase"),
        buildGoals(textGoal: "Planning Stage"),
      ],
    );
  }
}

buildGoals({required String textGoal}) {
  return Padding(
    padding: const EdgeInsets.all(hDefaultPadding / 2),
    child: Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(
          width: hDefaultPadding / 2,
        ),
        Text("$textGoal")
      ],
    ),
  );
}