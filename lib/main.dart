import 'package:design_patterns/design_patterns/decorator/example_2/decorators/caching_data_decorator.dart';
import 'package:design_patterns/design_patterns/decorator/example_2/decorators/logging_weather_decorator.dart';
import 'package:design_patterns/design_patterns/decorator/example_2/decorators/retry_decorator.dart';
import 'package:design_patterns/design_patterns/decorator/example_2/network_weather_service.dart';
import 'package:flutter/material.dart';

import 'design_patterns/decorator/example_1/button_decorator.dart';
import 'design_patterns/decorator/example_2/weather_service.dart';

// void main() {
//   runApp(const MyApp());
// }

//TODO(Himank): uncomment for decorator example two
//
// void main() async {
//   WeatherService weatherService = RetryWeatherService(
//     // Retry mechanism
//     CachingWeatherService(
//       // Caching
//       LoggingWeatherService(
//         // Logging
//         NetworkWeatherService(), // Actual API call
//       ),
//     ),
//     maxRetries: 3,
//   );
//
//   print("\n--- First Request (API Call) ---");
//   String weather1 = await weatherService.fetchWeather();
//   print("Weather: $weather1\n");
//
//   print("\n--- Second Request (Should Return Cached Data) ---");
//   String weather2 = await weatherService.fetchWeather();
//   print("Weather: $weather2\n");
//
//   print("\n--- Simulating a Failure (Retry in Action) ---");
//   String weather3 = await weatherService.fetchWeather();
//   print("Weather: $weather3\n");
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ButtonDecorator(),
    );
  }
}
