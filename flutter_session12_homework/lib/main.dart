import 'package:flutter/material.dart';
import 'package:flutter_session12_homework/actions_section.dart';
import 'package:flutter_session12_homework/feature_tile_section.dart';
import 'package:flutter_session12_homework/header_card_section.dart';
import 'package:flutter_session12_homework/stat_card_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFEF7FF),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderCardSection(),
                const SizedBox(height: 32),
                const Text('Quick Stats', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                StatCardSection(),
                const SizedBox(height: 32),
                const Text('Features', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                FeatureTileSection(),
                const SizedBox(height: 80),
                ActionsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
