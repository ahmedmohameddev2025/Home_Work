import 'package:flutter/material.dart';
import '../model/weather_model.dart';
import '../service/weather_service.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFAA44),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Search a City", style: TextStyle(color: Colors.white)),
        elevation: 4,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              if (value.trim().isEmpty) return;

              try {
                WeatherModel weather = await WeatherService().getWeather(value);

                if (!mounted) return;

                Navigator.pop(context, weather);
              } catch (e) {
                if (!mounted) return;

                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(e.toString())));
              }
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              labelText: 'Search',
              hintText: 'Enter City Name',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFFAA44)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFFAA44)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFFAA44)),
              ),
              labelStyle: TextStyle(color: Color(0xFFFFAA44)),
            ),
          ),
        ),
      ),
    );
  }
}
