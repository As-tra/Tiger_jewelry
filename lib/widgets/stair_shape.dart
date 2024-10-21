import 'package:flutter/material.dart';

class StairShape extends StatelessWidget {
  const StairShape({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 20,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 50,
              color: Colors.white,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
