import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:new_weather_app/models/weather_model.dart';
import 'package:new_weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search a City"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              weatherModel =
                  await WeatherService().getWeatherData(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Search",
              hintText: "Enter city name",
              suffixIcon: Icon(Icons.search),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            ),
          ),
        ),
      ),
    );
  }
}

// Global Object
WeatherModel? weatherModel;
