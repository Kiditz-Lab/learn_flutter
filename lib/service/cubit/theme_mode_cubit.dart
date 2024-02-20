import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_mode_state.dart';
part 'theme_mode_cubit.freezed.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit() : super(const ThemeModeState());
  void switchTheme() {
    emit(state.copyWith(
        mode: state.mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark));
  }
}
