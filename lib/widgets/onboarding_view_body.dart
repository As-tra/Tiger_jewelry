import 'package:flutter/material.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:jewelry/views/login_view.dart';
import 'package:jewelry/widgets/connect_button.dart';
import 'package:jewelry/widgets/inscription_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesBg,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                Row(children: [Image.asset(Assets.imagesLogo)]),
                const SizedBox(height: 45),
                Text("Bienvenue", style: Styles.poppinsRegular30),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "chez Tiger Jewelry",
                    style: Styles.poppinsRegular30,
                  ),
                ),
                const Spacer(flex: 3),
                ConnectButton(
                  ontap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const InscriptionButton(),
                const SizedBox(height: 30),
                Text(
                  "Mot de passe oublié ?",
                  style: Styles.poppinsMedium16,
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
