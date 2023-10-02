import 'package:flutter/material.dart';
import 'package:test_bloc_task/generated/assets/colors.gen.dart';

class TwoCircles extends StatelessWidget {
  const TwoCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          child: Container(
            width: 67,
            height: 67,
            decoration: const BoxDecoration(
              color: ColorName.blueLight,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 43,
            height: 43,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: ColorName.redCircle,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
