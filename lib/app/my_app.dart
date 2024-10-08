import 'package:clot/app/routes.dart';
import 'package:clot/shared/widgets/app_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isLightTheme = ref.watch(ThemeNotifierProvider().themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clot App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        textTheme: const TextTheme(
          // Apply the font to different text styles
          bodyLarge: TextStyle(fontFamily: 'Circular Std'),
          bodyMedium: TextStyle(fontFamily: 'Circular Std'),
          bodySmall: TextStyle(fontFamily: 'Circular Std'),
          displayLarge: TextStyle(
              fontFamily: 'Circular Std', fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontFamily: 'Circular Std'),
          displaySmall: TextStyle(fontFamily: 'Circular Std'),
          headlineMedium: TextStyle(fontFamily: 'Circular Std'),
          headlineSmall: TextStyle(fontFamily: 'Circular Std'),
        ),
        useMaterial3: true,
      ),
      home: const AppBottomNav(),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
