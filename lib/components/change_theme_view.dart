import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/service/cubit/theme_mode_cubit.dart';

class ChangeThemeView extends StatelessWidget {
  const ChangeThemeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Switch Theme',
      onPressed: () {
        context.read<ThemeModeCubit>().switchTheme();
      },
      icon: BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (context, state) {
          return state.mode == ThemeMode.light
              ? const Icon(Icons.dark_mode_outlined)
              : const Icon(Icons.light_mode_outlined);
        },
      ),
    );
  }
}
