import 'package:flutter/material.dart';
import 'package:jewelry/utils/app_colors.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Meilleures offres\npour vous",
                style: Styles.poppinsRegular30.copyWith(
                  color: AppColors.tertiary,
                ),
              ),
            ),
          ),
          const SizedBox(width: 40),
          SvgPicture.asset(Assets.imagesSearch),
        ],
      ),
    );
  }
}
