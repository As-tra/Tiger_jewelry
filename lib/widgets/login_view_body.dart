import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:jewelry/widgets/login_form.dart';
import 'package:jewelry/widgets/stair_shape.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40),
                  _buildReturnButton(context),
                  const SizedBox(height: 45),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52.0),
                    child:
                        Text("Salut,\nSteven", style: Styles.poppinsRegular30),
                  ),
                  const SizedBox(height: 100),
                  const StairShape(),
                  const LoginForm(),
                ],
              ),
              Positioned(
                right: -100,
                child: Image.asset(Assets.imagesBoxes),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildReturnButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 52.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(Assets.imagesReturn),
          )
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return const BoxDecoration(
      gradient: kGradient1,
    );
  }
}
