import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String _baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static const String _apiKey =
      'a8b24ccbaa602a5a9606bcaf3bf4418f'; // Substitua aqui

  Future<Map<String, dynamic>?> fetchWeather(String cityName) async {
    final url = Uri.parse(
        '$_baseUrl?q=$cityName&appid=$_apiKey&units=metric&lang=pt_br');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Erro ao buscar clima: ${response.statusCode}');
      return null;
    }
  }
}
