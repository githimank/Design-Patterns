import 'package:design_patterns/design_patterns/decorator/example_2/weather_service.dart';

// 3 This base decorator forwards the request to the wrapped service.

class WeatherServiceDecorator implements WeatherService {
  final WeatherService service;

  WeatherServiceDecorator(this.service);

  @override
  Future<String> fetchWeather() {
    return service.fetchWeather();
  }
}
