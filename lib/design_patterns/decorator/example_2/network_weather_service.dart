import 'dart:async';

import 'package:design_patterns/design_patterns/decorator/example_2/weather_service.dart';

// 2 the concrete class that actually fetches data from a weather API.

class NetworkWeatherService implements WeatherService {
  @override
  Future<String> fetchWeather() async {
    print("Fetching weather from API...");

    // Simulate API call with a delay
    await Future.delayed(Duration(seconds: 2));

    // Simulate an API response (you can replace this with an actual HTTP call)
    return "Sunny, 25°C";
  }
}
