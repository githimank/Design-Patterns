// 1 an abstract service that all concrete services will implement.

abstract class WeatherService {
  Future<String> fetchWeather();
}
