import 'package:flutter/material.dart';
import 'package:jewelry/utils/styles.dart';

class PrincipauxBoutiques extends StatelessWidget {
  const PrincipauxBoutiques({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Text(
        "Principaux Boutiques",
        style: Styles.poppinsRegular24,
      ),
    );
  }
}
