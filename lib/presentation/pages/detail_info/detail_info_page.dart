import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_task/presentation/logic/choice_type_bloc/choice_type_bloc.dart';
import 'package:test_bloc_task/presentation/logic/setting_detail_bloc/setting_detail_bloc.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';
import 'package:test_bloc_task/presentation/widgets/detail_top_element.dart';
import 'package:test_bloc_task/presentation/widgets/two_circles.dart';
import 'package:test_bloc_task/presentation/utils/context_extensions.dart';

class DetailInfoPage extends StatelessWidget {
  const DetailInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const buttonBottomPadding = 80.0;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: buttonBottomPadding,
            child: IconName.blueCircle(size: 67),
          ),
          Column(
            children: [
              const Stack(
                children: [
                  Positioned(
                    right: 70,
                    top: 20,
                    child: TwoCircles(),
                  ),
                  SizedBox(
                    height: 120,
                    child: Align(alignment: Alignment.topLeft, child: DetailTopElement()),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlocBuilder<SettingDetailBloc, SettingDetailState>(
                          builder: (context, stateSelectedDate) {
                            return BlocBuilder<ChoiceTypeBloc, ChoiceTypeState>(
                              builder: (context, stateChoiceType) {
                                return stateSelectedDate is SelectedSettingDate &&
                                        stateChoiceType is SelectedChoiceType
                                    ? _getLineInfo(
                                        context,
                                        stateChoiceType.selectedChoiceType.title,
                                        stateSelectedDate.date,
                                      )
                                    : const SizedBox.shrink();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconName.detailBottomRight,
          ),
        ],
      ),
    );
  }

  Widget _getLineInfo(
    BuildContext context,
    String? name,
    String? chooseData,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name ?? '',
          style: context.textTheme.titleMedium,
        ),
        const SizedBox(width: 12),
        Text(
          chooseData ?? '',
          style: context.textTheme.titleMedium,
        )
      ],
    );
  }
}
