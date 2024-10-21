import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 22),
            decoration: const BoxDecoration(
              gradient: kGradient1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
              ),
            ),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  "2.572.500 XOF",
                  style: Styles.poppinsRegular20.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(Assets.imagesArrowForward),
                const Spacer(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
