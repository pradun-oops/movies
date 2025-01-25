import 'package:flutter/material.dart';
import 'package:reelrecap/helper/page_routes.dart';

class AnimeSection extends StatelessWidget {
  const AnimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> treandingAnime = [
      {
        "img": "assets/images/treanding/treanding37.png",
      },
      {
        "img": "assets/images/treanding/treanding38.png",
      },
      {
        "img": "assets/images/treanding/treanding39.png",
      },
      {
        "img": "assets/images/treanding/treanding40.png",
      },
      {
        "img": "assets/images/treanding/treanding41.png",
      },
      {
        "img": "assets/images/treanding/treanding42.png",
      },
      {
        "img": "assets/images/treanding/treanding43.png",
      },
      {
        "img": "assets/images/treanding/treanding44.png",
      },
      {
        "img": "assets/images/treanding/treanding45.png",
      },
      {
        "img": "assets/images/treanding/treanding46.png",
      },
      {
        "img": "assets/images/treanding/treanding47.png",
      },
    ];
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .6,
          crossAxisCount: 2,
        ),
        itemCount: treandingAnime.length,
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
                  arguments: treandingAnime[index]["img"],
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  treandingAnime[index]["img"],
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
