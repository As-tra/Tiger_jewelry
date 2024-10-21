import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/utils/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17),
      decoration: BoxDecoration(
        gradient: kGradient,
        borderRadius: BorderRadius.circular(38),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 30,
            spreadRadius: 0,
            color: Color(0xffB9ABD2),
          )
        ],
      ),
      child: Text(
        "Se Connecter",
        textAlign: TextAlign.center,
        style: Styles.poppinsSemiBold18,
      ),
    );
  }
}
