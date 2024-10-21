import 'package:flutter/material.dart';
import 'package:jewelry/models/ring_model.dart';
import 'package:jewelry/widgets/ring_item_description.dart';

class RingItem extends StatelessWidget {
  const RingItem({super.key, required this.ringModel});
  final RingModel ringModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 137,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              const Spacer(),
              RingItemDescription(ringModel: ringModel),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              ringModel.image,
              height: 150,
            ),
          ),
          Positioned(
            bottom: -15,
            right: -15,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: ringModel.color,
              child: const Icon(
                Icons.add,
                size: 29,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
