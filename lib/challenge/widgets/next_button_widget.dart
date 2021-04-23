import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  final VoidCallback onTap;

  NextButtonWidget({
    required this.onTap,
    required this.label,
    required this.textColor,
    required this.borderColor,
    required this.backgroundColor,
  });

  NextButtonWidget.green({
    required this.label,
    required this.onTap,
  })   : this.backgroundColor = AppColors.darkGreen,
        this.borderColor = AppColors.green,
        this.textColor = AppColors.white;

  NextButtonWidget.white({
    required this.label,
    required this.onTap,
  })   : this.backgroundColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.textColor = AppColors.gray;

  NextButtonWidget.purple({
    required this.label,
    required this.onTap,
  })   : this.backgroundColor = AppColors.purple,
        this.borderColor = AppColors.green,
        this.textColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: borderColor,
            ),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: textColor,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
