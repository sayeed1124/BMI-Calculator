import 'package:flutter/material.dart';

import 'formula.dart';

// ignore: must_be_immutable
class Result_Widget extends StatefulWidget {
  int weight;
  int height;
  int? age;
  Result_Widget({required this.weight, required this.height, this.age});
  //Result_Widget({Key? key}) : super(key: key);

  @override
  State<Result_Widget> createState() => _Result_WidgetState();
}

class _Result_WidgetState extends State<Result_Widget> {
  Logic logic = Logic();
  double bmiResult = 0;

  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "BMI RESULT",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '${bmiResult.toStringAsFixed(1)}',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
