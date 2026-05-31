import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/service/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  WeatherModel? weatherModel;

  Future<void> getWeather(String cityName) async {
    try {
      WeatherModel weather = await WeatherService().getWeather(cityName);

      weatherModel = weather;

      emit(WeatherLoaded(weather));
    } catch (e) {
      emit(WeatherFailure(e.toString().replaceFirst('Exception: ', '')));
    }
  }
}
