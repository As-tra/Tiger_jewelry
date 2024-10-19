import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jewelry/utils/styles.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(38),
          ),
          child: Text(
            "Connexion",
            textAlign: TextAlign.center,
            style: Styles.poppinsSemiBold18,
          ),
        ),
      ),
    );
  }
}
