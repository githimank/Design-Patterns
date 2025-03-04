import 'package:design_patterns/design_patterns/decorator/example_2/decorators/weather_service_decorator.dart';

// 4 a Logging Decorator that logs every request and response.

class LoggingWeatherService extends WeatherServiceDecorator {
  LoggingWeatherService(super.service);

  @override
  Future<String> fetchWeather() async {
    print("LOG: Requesting weather data...");

    String weather = await super.fetchWeather();

    print("LOG: Response received - $weather");
    return weather;
  }
}
