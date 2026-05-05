import 'package:dio/dio.dart';
import '../model/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'e1f3334212e140f7a73144807260205';

  Future<WeatherModel> getWeather(String cityName) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json',
        queryParameters: {'key': apiKey, 'q': cityName, 'days': 1},
      );
      print(response.data);

      if (response.data['error'] != null) {
        throw Exception(response.data['error']['message']);
      }

      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Error';
      throw Exception(message);
    } catch (e) {
      throw Exception('Error');
    }
  }
}
