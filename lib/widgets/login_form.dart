import 'package:flutter/material.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/widgets/custom_text_field.dart';
import 'package:jewelry/widgets/login_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 52.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 45),
          CustomTextField(
            label: "Email",
            hint: "stevenkejjad@gmail.com",
            icon: Assets.imagesMail,
          ),
          SizedBox(height: 35),
          CustomTextField(
            label: "Mot de passe",
            hint: "••••••••••",
            icon: Assets.imagesKey,
            hideText: true,
          ),
          SizedBox(height: 70),
          LoginButton(),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
