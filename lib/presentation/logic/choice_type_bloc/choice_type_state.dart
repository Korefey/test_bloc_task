part of 'choice_type_bloc.dart';

abstract class ChoiceTypeState {}

class ChoiceTypeInit extends ChoiceTypeState {}

class SelectedChoiceType extends ChoiceTypeState {
  SelectedChoiceType({required this.selectedChoiceType});

  final ChoiceType selectedChoiceType;
}
