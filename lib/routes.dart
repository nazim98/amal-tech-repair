import 'package:flutter/material.dart';

import 'pages/advertise_page.dart';
import 'pages/explore_page.dart';
import 'pages/home_page.dart';
import 'pages/main_page.dart';
import 'pages/me_page.dart';
import 'pages/settings_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => MainPage(),
  '/explore': (context) => ExplorePage(),
  '/advertise': (context) => AdvertisePage(),
  '/chat': (context) => HomePage(),
  '/me': (context) => MePage(),
  '/settings': (context) => SettingsPage(),
};
