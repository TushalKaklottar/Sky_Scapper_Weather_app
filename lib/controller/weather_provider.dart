import 'package:flutter/cupertino.dart';
import '../helper/weather_helper.dart';
import '../modals/weather_modal.dart';


class WeatherProvider extends ChangeNotifier {
  String location = "Rajkot";
  WeatherModel? _weatherModel;
  TextEditingController citynamecontroller = TextEditingController();
  void locationchange(String newLocation) {
    location = newLocation;
    notifyListeners();
  }

  Future<WeatherModel?> Weatherdata({required String locationame}) async {
    _weatherModel =
    await APIHelper.apiHelper.fetchweather(locationame: location);
    return _weatherModel;
  }
}