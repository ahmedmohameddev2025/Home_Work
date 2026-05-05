class WeatherModel {
  final String cityName;
  final String date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String condition;
  final String icon;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
    required this.icon,
  });

  factory WeatherModel.fromJson(dynamic json) {

  var forecastDay = json['forecast']['forecastday'][0]['day'];

  return WeatherModel(
    cityName: json['location']['name'],
    date: json['current']['last_updated'],
    temp: (json['current']['temp_c'] as num).toDouble(),
    maxTemp: (forecastDay['maxtemp_c'] as num).toDouble(),
    minTemp: (forecastDay['mintemp_c'] as num).toDouble(),
    condition: json['current']['condition']['text'],
    icon: json['current']['condition']['icon'],
  );
}
}
