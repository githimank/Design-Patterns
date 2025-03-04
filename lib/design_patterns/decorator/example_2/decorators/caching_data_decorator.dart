// 4  a Caching Decorator that stores the last fetched response.

import 'weather_service_decorator.dart';

class CachingWeatherService extends WeatherServiceDecorator {
  String? _cachedWeather;

  CachingWeatherService(super.service);

  @override
  Future<String> fetchWeather() async {
    if (_cachedWeather != null) {
      print("CACHE: Returning cached weather data...");
      return _cachedWeather!;
    }

    _cachedWeather = await super.fetchWeather();
    print("CACHE: Storing weather data: $_cachedWeather");

    return _cachedWeather!;
  }
}
