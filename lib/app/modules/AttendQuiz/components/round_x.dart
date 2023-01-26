import 'package:dronalms/app/modules/AttendQuiz/components/round_number.dart';
import 'package:flutter/material.dart';

class RoundX extends RoundNumber {
  const RoundX({
    this.sign = "X",
    required this.roundColor,
  }) : super(quizNumber: sign, roundColor: roundColor);

  final String sign;
  final Color roundColor;
}
