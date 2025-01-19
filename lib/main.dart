import 'package:flutter/material.dart';
import 'package:vesti/constants/app_colors.dart';
import 'package:vesti/constants/app_texts.dart';
import 'package:vesti/constants/asset_paths.dart';
import 'package:vesti/widgets/buildCategory.dart';
import 'package:vesti/widgets/buildInfoChips.dart';
import 'package:vesti/widgets/buildSection.dart';

import 'Views/onboard/onboardScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      // home: OnboardingScreen2(),
      home: OnboardingScreen1(),
    );
  }
}

















