import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;
  const ProgressIndicatorWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearProgressIndicator(
        value: this.value,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
      ),
    );
  }
}
