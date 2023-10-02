import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'setting_detail_event.dart';
part 'setting_detail_state.dart';

class SettingDetailBloc extends Bloc<SettingDetailEvent, SettingDetailState> {
  SettingDetailBloc() : super(InitSettingDetailInitial()) {
    on<SelectedSettingDateEvent>((event, emit) {
      emit(SelectedSettingDate(date: event.date));
    });
  }
}
