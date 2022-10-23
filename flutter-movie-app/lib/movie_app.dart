import 'package:flutter/material.dart';
import 'package:flutter_movie_app/config/app_themes.dart';
import 'package:flutter_movie_app/onboarding/onboarding_page.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie App',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark.copyWith(
        textTheme: AppThemes.dark.textTheme.apply(
          fontFamily: 'Roboto',
        ),
      ),
      home: const OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
