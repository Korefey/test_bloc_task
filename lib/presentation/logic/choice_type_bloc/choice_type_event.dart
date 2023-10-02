part of 'choice_type_bloc.dart';

@immutable
abstract class ChoiceTypeEvent {}

class InitChoiceTypeInitial extends ChoiceTypeEvent {}

class SelectedChoiceTypeEvent extends ChoiceTypeEvent {
  final ChoiceType selectedChoiceType;

  SelectedChoiceTypeEvent(this.selectedChoiceType);
}
