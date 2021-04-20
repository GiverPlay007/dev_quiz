import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 40, height: 40, child: Image.asset(AppImages.blocks)),
          SizedBox(height: 24),
          Text("Gerenciamento de estados", style: AppTextStyles.heading15),
          SizedBox(height: 24),
          Row(children: [
            Expanded(
                flex: 1, child: Text("3 de 10", style: AppTextStyles.body11)),
            Expanded(
              flex: 4,
              child: LinearProgressIndicator(
                  value: 0.3,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary)),
            )
          ])
        ]));
  }
}
