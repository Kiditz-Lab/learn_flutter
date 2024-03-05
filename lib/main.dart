import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/router.dart';
import 'package:learn_flutter/service/cubit/theme_mode_cubit.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const App(),
    enabled: kIsWeb,
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeModeCubit(),
      child: BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Tutorial',
            debugShowCheckedModeBanner: false,
            themeMode: state.mode,
            themeAnimationCurve: Curves.easeInOutBack,
            themeAnimationDuration: Durations.extralong4,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                brightness: Brightness.light,
              ),
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                brightness: Brightness.dark,
              ),
            ),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
