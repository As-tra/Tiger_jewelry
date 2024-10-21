import 'package:flutter/material.dart';
import 'package:jewelry/models/ring_model.dart';
import 'package:jewelry/utils/styles.dart';

class RingItemDescription extends StatelessWidget {
  const RingItemDescription({
    super.key,
    required this.ringModel,
  });

  final RingModel ringModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: ringModel.backround,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          Text(
            ringModel.description,
            style: Styles.poppinsRegular12,
          ),
          const SizedBox(height: 11),
          Text(
            ringModel.price,
            style: Styles.poppinsSemiBold12,
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}
