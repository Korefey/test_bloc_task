part of 'setting_detail_bloc.dart';

@immutable
abstract class SettingDetailEvent {}

class SelectSettingDetailEvent extends SettingDetailEvent {}

class SelectedSettingDateEvent extends SettingDetailEvent {
  final String date;

  SelectedSettingDateEvent(this.date);
}
