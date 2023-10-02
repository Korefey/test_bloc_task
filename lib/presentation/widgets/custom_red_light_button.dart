import 'package:flutter/material.dart';
import 'package:test_bloc_task/generated/assets/colors.gen.dart';
import 'package:test_bloc_task/presentation/resources/app_theme.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';
import 'package:test_bloc_task/presentation/utils/context_extensions.dart';

class CustomRedLightButton extends StatelessWidget {
  const CustomRedLightButton({
    super.key,
    required this.header,
    required this.description,
    required this.onTap,
  });

  final String header;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith(
              getLightElevatedButtonBackgroundColor,
            ),
            overlayColor: lightElevatedButtonOverlayColor,
            foregroundColor: MaterialStateProperty.resolveWith(
              getLightElevatedButtonForegroundColor,
            ),
          ),
      onPressed: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 41,
                    child: Text(
                      header,
                      style: context.textTheme.displayLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      description,
                      style: context.textTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconName.icRightArrow(color: ColorName.blueDark),
        ],
      ),
    );
  }
}
