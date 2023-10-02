import 'package:test_bloc_task/generated/localizations/l10n.dart';

enum ChoiceType {
  trackMyPeriod,
  getPregnant;

  String get title {
    switch (this) {
      case ChoiceType.trackMyPeriod:
        return S.current.trackMyPeriod;
      case ChoiceType.getPregnant:
        return S.current.getPregnant;
    }
  }
}
