import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';

  Future<WeatherModel> getWeather(String cityName) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json',
        queryParameters: {
          'key': 'e1f3334212e140f7a73144807260205',
          'q': cityName,
          'days': 1,
        },
      );
      print(response.data);
      return WeatherModel.fromJson(response.data);
      
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Connection timeout');
      }

      if (e.type == DioExceptionType.receiveTimeout) {
        throw Exception('Receive timeout');
      }

      if (e.type == DioExceptionType.connectionError) {
        throw Exception('No internet connection');
      }

      final message = e.response?.data['error']['message'];

      if (message != null &&
          message.toLowerCase().contains('no matching location')) {
        throw Exception('City not found');
      }

      throw Exception(message ?? 'Oops there was an error');
    } catch (e) {
      throw Exception('Failed to fetch weather data');
    }
  }
}
