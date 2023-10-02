import 'package:flutter/material.dart';
import 'package:test_bloc_task/generated/localizations/l10n.dart';
import 'package:test_bloc_task/presentation/enums/choice_type.dart';
import 'package:test_bloc_task/presentation/logic/choice_type_bloc/choice_type_bloc.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';
import 'package:test_bloc_task/presentation/router/app_router.dart';
import 'package:test_bloc_task/presentation/router/route_name.dart';
import 'package:test_bloc_task/presentation/widgets/custom_red_light_button.dart';
import 'package:test_bloc_task/presentation/widgets/two_ellipses.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            left: 67,
            bottom: 136,
            child: TwoEllipses(),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconName.homeTopLeft,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: CustomRedLightButton(
                    header: S.current.trackMyPeriod,
                    description: S.current.contraceptionAndWellbeing,
                    onTap: () {
                      BlocProvider.of<ChoiceTypeBloc>(context)
                          .add(SelectedChoiceTypeEvent(ChoiceType.trackMyPeriod));
                      // context.read<CounterBloc>().add(CounterIncrementPressed());
                      AppRouter.router.go(RouteName.settingDetailPage);
                      // AppRouter.router.goNamed(RouteName.trackPeriod);
                    }),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: CustomRedLightButton(
                    header: S.current.getPregnant,
                    description: S.current.learnAboutReproductiveHealth,
                    onTap: () {
                      BlocProvider.of<ChoiceTypeBloc>(context)
                          .add(SelectedChoiceTypeEvent(ChoiceType.getPregnant));
                      AppRouter.router.go(RouteName.settingDetailPage);
                    }),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: IconName.homeBottomRight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
