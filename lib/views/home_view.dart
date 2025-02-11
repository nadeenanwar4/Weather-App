import 'package:flutter/material.dart';
import 'package:new_weather_app/widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/SearchView");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: const NoWeatherBody(),
    );
  }
}
