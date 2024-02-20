part of 'theme_mode_cubit.dart';

@freezed
class ThemeModeState with _$ThemeModeState {
  const factory ThemeModeState({
    @Default(ThemeMode.dark) ThemeMode mode,
  }) = _ThemeModeState;
}
