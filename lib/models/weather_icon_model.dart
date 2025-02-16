class WeatherIconModel {
  static String getIconPath({String? iconID}) {
    switch (iconID) {
      case "clear-day":
        return "assets/weather_icons/clear-day.png";
      case "clear-night":
        return "assets/weather_icons/clear-night.png";
      case "cloudy":
        return "assets/weather_icons/cloudy.png";
      case "partly-cloudy-day":
        return "assets/weather_icons/partly-cloudy-day.png";
      case "partly-cloudy-night":
        return "assets/weather_icons/partly-cloudy-night.png";
      case "rain":
        return "assets/weather_icons/rain.png";
      case "showers-day":
        return "assets/weather_icons/showers-day.png";
      case "showers-night":
        return "assets/weather_icons/showers-night.png";
      case "wind":
        return "assets/weather_icons/wind.png";
      case "thunder":
        return "assets/weather_icons/thunder.png";
      case "thunder-showers-day":
        return "assets/weather_icons/thunder-showers-day.png";
      case "thunder-showers-night":
        return "assets/weather_icons/thunder-showers-night.png";
      case "thunder-rain":
        return "assets/weather_icons/thunder-rain.png";
      case "snow":
        return "assets/weather_icons/snow.png";
      case "snow-showers-day":
        return "assets/weather_icons/snow-showers-day.png";
      case "snow-showers-night":
        return "assets/weather_icons/snow-showers-night.png";
      case "rain-snow-showers-day":
        return "assets/weather_icons/rain-snow-showers-day.png";
      case "rain-snow-showers-night":
        return "assets/weather_icons/rain-snow-showers-night.png";
      case "fog":
        return "assets/weather_icons/fog.png";
      default:
        return "assets/weather_icons/error-weather.png";
    }
  }
}
