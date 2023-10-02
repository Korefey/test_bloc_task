import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_task/presentation/logic/choice_type_bloc/choice_type_bloc.dart';
import 'package:test_bloc_task/presentation/logic/setting_detail_bloc/setting_detail_bloc.dart';

class BlocProviders extends StatelessWidget {
  const BlocProviders({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingDetailBloc>(create: (_) => SettingDetailBloc()),
        BlocProvider<ChoiceTypeBloc>(create: (_) => ChoiceTypeBloc()),
      ],
      child: child,
    );
  }
}
