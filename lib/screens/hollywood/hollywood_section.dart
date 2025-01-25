import 'package:flutter/material.dart';
import 'package:reelrecap/helper/page_routes.dart';

class HollywoodSection extends StatelessWidget {
  const HollywoodSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> treandingHollywood = [
      {
        "img": "assets/images/hollywood/mv1.png",
      },
      {
        "img": "assets/images/hollywood/mv2.png",
      },
      {
        "img": "assets/images/hollywood/mv3.png",
      },
      {
        "img": "assets/images/treanding/treanding1.png",
      },
      {
        "img": "assets/images/treanding/treanding2.png",
      },
      {
        "img": "assets/images/treanding/treanding3.png",
      },
      {
        "img": "assets/images/treanding/treanding4.png",
      },
      {
        "img": "assets/images/hollywood/mv4.png",
      },
      {
        "img": "assets/images/hollywood/mv5.png",
      },
      {
        "img": "assets/images/hollywood/mv6.png",
      },
      {
        "img": "assets/images/hollywood/mv7.png",
      },
      {
        "img": "assets/images/treanding/treanding5.png",
      },
      {
        "img": "assets/images/treanding/treanding6.png",
      },
      {
        "img": "assets/images/treanding/treanding7.png",
      },
      {
        "img": "assets/images/treanding/treanding8.png",
      },
      {
        "img": "assets/images/treanding/treanding9.png",
      },
      {
        "img": "assets/images/treanding/treanding10.png",
      },
      {
        "img": "assets/images/hollywood/mv8.png",
      },
      {
        "img": "assets/images/hollywood/mv9.png",
      },
      {
        "img": "assets/images/hollywood/mv10.png",
      },
      {
        "img": "assets/images/treanding/treanding11.png",
      },
      {
        "img": "assets/images/treanding/treanding12.png",
      },
    ];
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .6,
          crossAxisCount: 2,
        ),
        itemCount: treandingHollywood.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            width: 170,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.ROUTE_DETAILS,
                  arguments: treandingHollywood[index]["img"],
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  treandingHollywood[index]["img"],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
