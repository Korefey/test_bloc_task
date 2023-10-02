import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_task/presentation/enums/choice_type.dart';

part 'choice_type_event.dart';
part 'choice_type_state.dart';

class ChoiceTypeBloc extends Bloc<ChoiceTypeEvent, ChoiceTypeState> {
  ChoiceTypeBloc() : super(ChoiceTypeInit()) {
    on<SelectedChoiceTypeEvent>((event, emit) {
      emit(SelectedChoiceType(selectedChoiceType: event.selectedChoiceType));
    });
  }
}
