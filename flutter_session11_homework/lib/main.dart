import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(width: double.infinity, height: 200, color: const Color(0xffe4f2fd)),
                const SizedBox(height: 10),

                Row(
                  children: [
                    Container(height: 30, width: 30, color: const Color(0xffe0e0e0)),
                    const SizedBox(width: 10),
                    Expanded(child: Container(height: 30, color: const Color(0xffe0e0e0))),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(thickness: 1.5, color: Color(0xffe0e0e0)),
                const SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(height: 50, color: const Color(0xffa5d6a7)),
                          Container(height: 10, color: const Color(0xffe6f6e9)),
                          Container(height: 50, color: const Color(0xffa5d6a7)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),

                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Container(height: 110, color: const Color(0xffffcc80))),
                          Container(width: 10, height: 110, color: const Color(0xfffff2df)),
                          Expanded(child: Container(height: 110, color: const Color(0xffffcc80))),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(child: Container(height: 90, color: const Color(0xffe1bee8))),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Container(height: 40, color: const Color(0xffcf93d9)),
                          Container(height: 10, color: const Color(0xffe1bee8)),
                          Container(height: 40, color: const Color(0xffcf93d9)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Container(height: 90, color: const Color(0xffe1bee8))),
                    const SizedBox(width: 10),
                    Expanded(child: Container(height: 90, color: const Color(0xfff3e5f6))),
                  ],
                ),
                const SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(child: Container(height: 70, color: const Color(0xffb2dfdc))),
                    const SizedBox(width: 15),
                    Expanded(child: Container(height: 70, color: const Color(0xff80cbc4))),
                  ],
                ),
                const SizedBox(height: 15),

                Container(height: 50, width: double.infinity, color: const Color(0xffe0e0e0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
