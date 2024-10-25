import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rick_and_morty/core/dependency_injection/dependency_injection.dart';
import 'package:rick_and_morty/core/routing/router.dart';
import 'package:rick_and_morty/core/ui_kit/theming/app_theme.dart';
import 'package:rick_and_morty/core/ui_kit/theming/colors/light_color_palette.dart';

void main() async {
  await _preRunSetup();
  runApp(const MyApp());
}

Future<void> _preRunSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  appTheme.setColorPalette(LightColorPalette());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Rick and Morty',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: appTheme.colorPalette.whiteSmoke,
          fontFamily: 'Lato',
          useMaterial3: true,
        ),
      ),
    );
  }
}
