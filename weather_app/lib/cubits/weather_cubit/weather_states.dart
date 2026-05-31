import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherModel weather;

  WeatherLoaded(this.weather);
}

class WeatherFailure extends WeatherState {
  final String errMessage;

  WeatherFailure(this.errMessage);
}
