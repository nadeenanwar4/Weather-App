import 'package:flutter/material.dart';
import 'package:new_weather_app/views/search_view.dart';
import 'package:new_weather_app/widgets/no_weather_body.dart';
import 'package:new_weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/SearchView");
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: weatherModel == null
          ? const NoWeatherBody()
          : const WeatherInfoBody(),
    );
  }
}
