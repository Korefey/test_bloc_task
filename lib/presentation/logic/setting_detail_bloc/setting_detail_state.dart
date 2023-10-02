part of 'setting_detail_bloc.dart';

@immutable
abstract class SettingDetailState {}

class InitSettingDetailInitial extends SettingDetailState {}

class SelectedSettingDate extends SettingDetailState {
  SelectedSettingDate({required this.date});

  final String date;
}
