import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/models/ring_model.dart';
import 'package:jewelry/utils/app_colors.dart';
import 'package:jewelry/utils/assets.dart';
import 'package:jewelry/widgets/ring_item.dart';

class RingsListView extends StatelessWidget {
  const RingsListView({super.key});

  static List<RingModel> rigns = [
    RingModel(
      color: AppColors.primary,
      image: Assets.imagesRing1,
      backround: kGradient1,
      description: "Tiger New York City Ring Bracelet Jewellery Bangle",
      price: "899.300 XOF",
    ),
    RingModel(
      color: const Color(0xffBEB481),
      image: Assets.imagesRing2,
      backround: kGradient2,
      description: "Tiger Gold Jewellery Bangle Ring",
      price: "875.200 XOF",
    ),
    RingModel(
      color: const Color(0xff81BE8E),
      image: Assets.imagesRing3,
      backround: kGradient3,
      description: "Tiger Love Bracelet Jewellery Diamond",
      price: "798.000 XOF",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      itemCount: rigns.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 18.0, left: index == 0 ? 38 : 0),
          child: RingItem(ringModel: rigns[index]),
        );
      },
    );
  }
}
