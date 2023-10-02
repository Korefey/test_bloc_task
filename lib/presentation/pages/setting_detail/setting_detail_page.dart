import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_task/generated/localizations/l10n.dart';
import 'package:test_bloc_task/presentation/logic/setting_detail_bloc/setting_detail_bloc.dart';
import 'package:test_bloc_task/presentation/resources/icons.dart';
import 'package:test_bloc_task/presentation/router/app_router.dart';
import 'package:test_bloc_task/presentation/router/route_name.dart';
import 'package:test_bloc_task/presentation/utils/context_extensions.dart';
import 'package:test_bloc_task/presentation/widgets/custom_button.dart';
import 'package:test_bloc_task/presentation/widgets/custom_date_picker.dart';
import 'package:test_bloc_task/presentation/widgets/detail_top_element.dart';
import 'package:test_bloc_task/presentation/widgets/two_circles.dart';

class SettingDetailPage extends StatefulWidget {
  const SettingDetailPage({super.key});

  @override
  State<SettingDetailPage> createState() => _SettingDetailPageState();
}

class _SettingDetailPageState extends State<SettingDetailPage> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SettingDetailBloc>(context)
        .add(SelectedSettingDateEvent(DateTime.now().year.toString()));
  }

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
                    Center(
                      child: Text(
                        S.current.logInYourDateOfBirth,
                        style: context.textTheme.displayLarge,
                      ),
                    ),
                    // const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomCupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime date) {
                            BlocProvider.of<SettingDetailBloc>(context)
                                .add(SelectedSettingDateEvent(date.year.toString()));
                          },
                          mode: CustomCupertinoDatePickerMode.year,
                          pickerTextStyle: context.textTheme.displayLarge!,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.only(bottom: buttonBottomPadding),
                        child: CustomButton(
                          title: S.current.next,
                          onTap: () {
                            AppRouter.router.go(RouteName.detailInfoPage);
                          },
                        )),
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
}
