import 'package:flutter/material.dart';
import 'package:jewelry/utils/app_colors.dart';
import 'package:jewelry/utils/styles.dart';

class InscriptionButton extends StatelessWidget {
  const InscriptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Text(
        "Inscription",
        textAlign: TextAlign.center,
        style: Styles.poppinsSemiBold18.copyWith(
          color: AppColors.primaryIcons,
        ),
      ),
    );
  }
}
