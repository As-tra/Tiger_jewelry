import 'package:flutter/material.dart';
import 'package:jewelry/models/boutique_model.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/widgets/custom_boutique_item.dart';

class BoutiquesListView extends StatelessWidget {
  const BoutiquesListView({super.key});

  static List<BoutiqueModel> items = [
    BoutiqueModel(
      image: Assets.imagesStore1,
      location: "34 Avenue, maiz, USA",
      name: "Cartier Jaw",
    ),
    BoutiqueModel(
      image: Assets.imagesStore2,
      location: "Avenue Steinmetz, Benin",
      name: "Mia Boutique",
    ),
    BoutiqueModel(
      image: Assets.imagesStore1,
      location: "36 Avenue, Poll, Vietnam",
      name: "Roady Mal",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomBoutiqueItem(boutiqueModel: items[index]);
      },
    );
  }
}
