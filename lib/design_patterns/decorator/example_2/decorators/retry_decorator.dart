import 'dart:math';

import 'package:design_patterns/design_patterns/decorator/example_2/decorators/weather_service_decorator.dart';

class RetryWeatherService extends WeatherServiceDecorator {
  final int maxRetries;
  final Random _random = Random();

  RetryWeatherService(super.service, {this.maxRetries = 3});

  @override
  Future<String> fetchWeather() async {
    int attempt = 0;

    while (attempt < maxRetries) {
      try {
        print("RETRY: Attempt ${attempt + 1} to fetch weather...");

        // Simulating a 30% chance of failure
        if (_random.nextDouble() < 0.3) {
          throw Exception("Network error");
        }

        return await super.fetchWeather();
      } catch (e) {
        print("ERROR: Failed to fetch weather data. Retrying...");
        attempt++;
        if (attempt >= maxRetries) {
          print("ERROR: Max retries reached. Returning default weather.");
          return "Data unavailable";
        }
      }
    }

    return "Data unavailable";
  }
}
