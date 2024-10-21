import 'package:flutter/material.dart';
import 'package:jewelry/models/boutique_model.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomBoutiqueItem extends StatelessWidget {
  const CustomBoutiqueItem({super.key, required this.boutiqueModel});
  final BoutiqueModel boutiqueModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 49,
        width: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(boutiqueModel.image),
          ),
        ),
      ),
      title: Text(
        boutiqueModel.name,
        style: Styles.poppinsRegular20,
      ),
      subtitle: Text(
        boutiqueModel.location,
        style: Styles.poppinsRegular16,
      ),
      trailing: SvgPicture.asset(Assets.imagesLocation),
    );
  }
}
