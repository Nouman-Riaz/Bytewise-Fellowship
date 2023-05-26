import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Weather {
  final String city;
  final double temperature;

  Weather({required this.city, required this.temperature});
}

class WeatherRepository {
  final String apiKey;
  final String baseUrl = "https://api.weatherprovider.com";

  WeatherRepository(this.apiKey);

  Future<Weather> getWeather({required String city}) async {
    final endpoint = "$baseUrl/weather";
    final params = {
      "location": city,
      "api_key": apiKey,
    };

    try {
      final Uri uri = Uri.parse(endpoint).replace(queryParameters: params);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final weatherData = json.decode(response.body);
        final temperature = weatherData['temperature'];
        return Weather(city: city, temperature: temperature);
      } else {
        throw Exception('Error occurred while fetching weather data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while fetching weather data: $e');
    }
  }
}

final weatherFutureProvider = FutureProvider.autoDispose<Weather>((ref) {
  // Get repository from the provider below
  final weatherRepository = ref.watch(weatherRepositoryProvider);
  // Call method that returns a Future<Weather>
  return weatherRepository.getWeather(city: 'London');
});

// Example weather repository provider
final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
return WeatherRepository('your_api_key_here');
});// Replace with
