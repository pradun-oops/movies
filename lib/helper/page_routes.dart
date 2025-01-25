import 'package:flutter/material.dart';
import 'package:reelrecap/screens/anime/anime_section.dart';
import 'package:reelrecap/screens/bollywood/bollywood_sction.dart';
import 'package:reelrecap/screens/details/details.dart';
import 'package:reelrecap/screens/hollywood/hollywood_section.dart';
import 'package:reelrecap/screens/homepage/homepage.dart';
import 'package:reelrecap/screens/onBording_screen/onboarding_screen.dart';
import 'package:reelrecap/screens/south_indian/south_indian_section.dart';
import 'package:reelrecap/screens/treanding/treanding_section.dart';

class AppRoutes {
  static const String ROUTE_ONBOARDING = "/";
  static const String ROUTE_HOME = "/home";
  static const String ROUTE_BOLLYWOOD = "/bollywood";
  static const String ROUTE_HOLLYWOOD = "/hollywood";
  static const String ROUTE_TREANDING = "/treanding";
  static const String ROUTE_SOUTHINDIAN = "/south_indian";
  static const String ROUTE_ANIME = "/anime";
  static const String ROUTE_DETAILS = "/details";
  static Map<String, WidgetBuilder> getRoutes() => {
        ROUTE_ONBOARDING: (context) => OnboardingScreen(),
        ROUTE_HOME: (context) => Homepage(),
        ROUTE_BOLLYWOOD: (context) => BollywoodSction(),
        ROUTE_HOLLYWOOD: (context) => HollywoodSection(),
        ROUTE_TREANDING: (context) => TreandingSection(),
        ROUTE_SOUTHINDIAN: (context) => SouthIndianSection(),
        ROUTE_ANIME: (context) => AnimeSection(),
        ROUTE_DETAILS: (context) => Details(),
      };
}
