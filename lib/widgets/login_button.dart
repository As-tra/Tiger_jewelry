import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:jewelry/views/home_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 17),
        decoration: BoxDecoration(
          gradient: kGradient1,
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
      ),
    );
  }
}
