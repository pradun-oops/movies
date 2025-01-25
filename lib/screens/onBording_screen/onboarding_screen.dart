import 'package:flutter/material.dart';
import 'package:reelrecap/helper/page_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    goToHomePage();
  }

  void goToHomePage() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    homePage();
  }

  void homePage() {
    Navigator.pushReplacementNamed(context, AppRoutes.ROUTE_HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFA1FFCE),
              Color(0xFFFAFFD1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo/boarding_logo.png",
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "ReelRecap",
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: "Whispering",
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Instantly access concise, engaging movie summaries...",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
