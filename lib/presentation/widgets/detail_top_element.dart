import 'package:flutter/material.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';

class DetailTopElement extends StatelessWidget {
  const DetailTopElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 120,
          child: Align(
            alignment: Alignment.topLeft,
            child: IconName.detailTopLeft,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: IconName.detailTopLine,
        ),
      ],
    );
  }
}
