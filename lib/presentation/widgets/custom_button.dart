import 'package:flutter/material.dart';
import 'package:test_bloc_task/generated/assets/colors.gen.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';
import 'package:test_bloc_task/presentation/utils/context_extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.width = 189,
    this.height = 50,
  });

  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 1.0],
            colors: [
              ColorName.blueGradientTop,
              ColorName.blueGradientBottom,
            ],
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                blurRadius: 5),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            disabledForegroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: ColorName.white,
                    ),
                  ),
                ),
              ),
              IconName.icRightArrow(color: ColorName.white),
            ],
          ),
        ),
      ),
    );
  }
}
