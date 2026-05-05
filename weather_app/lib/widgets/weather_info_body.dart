import 'package:flutter/material.dart';
import '../model/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weather;

  const WeatherInfoBody({super.key, required this.weather});

 @override
Widget build(BuildContext context) {
  final Color weatherColor = getTempColor(weather.temp);

  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          weatherColor,
          weatherColor.withValues(alpha: 0.4),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weather.cityName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'updated at: ${weather.date}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network('https:${weather.icon}', width: 80, height: 80),

              Text(
                '${weather.temp.toInt()}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Column(
                children: [
                  Text('maxTemp: ${weather.maxTemp.toInt()}'),
                  Text('minTemp: ${weather.minTemp.toInt()}'),
                ],
              ),
            ],
          ),

          const SizedBox(height: 40),

          Text(
            weather.condition,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
}

Color getTempColor(double temp) {
  if (temp >= 35) {
    return Colors.red;
  } else if (temp >= 25) {
    return Colors.orange;
  } else if (temp >= 15) {
    return Colors.blue;
  } else if (temp >= 5) {
    return Colors.lightBlue;
  } else {
    return Colors.blueGrey;
  }
}
