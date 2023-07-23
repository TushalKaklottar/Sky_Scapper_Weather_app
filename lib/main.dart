import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sky_scapper_new/view/screen/add_city.dart';
import 'package:sky_scapper_new/view/screen/home_page.dart';
import 'package:sky_scapper_new/view/screen/manage_city.dart';
import 'package:sky_scapper_new/view/screen/splash_screen.dart';
import 'controller/connectivity_provider.dart';
import 'controller/weather_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (context) => ConnectivityProvider(),
        ),
          ChangeNotifierProvider(
            create: (context) => WeatherProvider(),
          ),
        ],
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode:ThemeMode.system,
        routes: {
          '/': (context) =>  const Splash_Screen(),
          'home_page': (context) => const  Home_page(),
          'manage_city' : (context) => const ManageCity(),
          'add_city': (context) => AddCity(),
        },
      ),
    ),
  );
}
