import 'package:flutter/material.dart';
import '../services/weather_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _cityController = TextEditingController();
  final WeatherService _weatherService = WeatherService();
  Map<String, dynamic>? _weatherData;

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            'Consulta de Clima',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          elevation: 4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _cityController,
              decoration: const InputDecoration(
                labelText: 'Digite o nome da cidade',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final city = _cityController.text.trim();
                if (city.isEmpty) return;

                final data = await _weatherService.fetchWeather(city);
                if (data != null) {
                  setState(() {
                    _weatherData = data;
                  });
                } else {
                  print('Erro ao buscar dados de clima');
                }
              },
              child: const Text('Buscar Clima'),
            ),
            const SizedBox(height: 24),
            (_weatherData != null)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cidade: ${_weatherData!['name']}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Temperatura: ${_weatherData!['main']['temp']} ºC'),
                      Text(
                          'Clima: ${_weatherData!['weather'][0]['description']}'),
                      Text('Umidade: ${_weatherData!['main']['humidity']}%'),
                      Text('Vento: ${_weatherData!['wind']['speed']} km/h'),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
