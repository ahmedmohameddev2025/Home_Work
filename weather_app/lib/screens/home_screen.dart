import 'package:flutter/material.dart';
import '../model/weather_model.dart';
import 'search_screen.dart';
import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherModel? weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather', style: TextStyle(color: Colors.white)),
        backgroundColor: weather == null
            ? Colors.blue
            : getTempColor(weather?.temp ?? 0),
        elevation: 4,
        shadowColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),

            onPressed: () async {
              var result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );

              if (result != null && result is WeatherModel) {
                setState(() {
                  weather = result;
                });
              }
            },
          ),
        ],
      ),
      body: weather == null
          ? const NoWeatherBody()
          : WeatherInfoBody(weather: weather!),
    );
  }
}
