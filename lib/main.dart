import 'package:flutter/material.dart';
import 'package:ride_with_us_app/find_ride.dart';
import 'package:ride_with_us_app/start_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => const StartPage(),
      "/findRide": (context) => const FindRidePage(),
    },
  ));
}

