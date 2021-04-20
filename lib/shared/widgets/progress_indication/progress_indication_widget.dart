import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ProgressIndicationWidget extends StatelessWidget {
  final double value;
  const ProgressIndicationWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: 0.3,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.chartPrimary,
      ),
    );
  }
}
