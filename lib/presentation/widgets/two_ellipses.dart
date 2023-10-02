import 'package:flutter/material.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';

class TwoEllipses extends StatelessWidget {
  const TwoEllipses({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconName.blueCircle(size: 138),
        Positioned(
          top: 0,
          right: 0,
          child: IconName.homeRedCircle,
        ),
      ],
    );
  }
}
