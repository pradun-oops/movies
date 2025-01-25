import 'package:flutter/material.dart';
import 'package:reelrecap/helper/page_routes.dart';

class BollywoodSction extends StatelessWidget {
  const BollywoodSction({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> treandingBollywood = [
      {
        "img": "assets/images/bollywood/mv3.png",
      },
      {
        "img": "assets/images/bollywood/mv4.png",
      },
      {
        "img": "assets/images/bollywood/mv5.png",
      },
      {
        "img": "assets/images/bollywood/mv6.png",
      },
      {
        "img": "assets/images/treanding/treanding13.png",
      },
      {
        "img": "assets/images/treanding/treanding14.png",
      },
      {
        "img": "assets/images/treanding/treanding15.png",
      },
      {
        "img": "assets/images/treanding/treanding16.png",
      },
      {
        "img": "assets/images/treanding/treanding17.png",
      },
      {
        "img": "assets/images/bollywood/mv10.png",
      },
      {
        "img": "assets/images/bollywood/mv11.png",
      },
      {
        "img": "assets/images/bollywood/mv12.png",
      },
      {
        "img": "assets/images/bollywood/mv13.png",
      },
      {
        "img": "assets/images/bollywood/mv14.png",
      },
      {
        "img": "assets/images/bollywood/mv15.png",
      },
      {
        "img": "assets/images/treanding/treanding18.png",
      },
      {
        "img": "assets/images/treanding/treanding19.png",
      },
      {
        "img": "assets/images/treanding/treanding20.png",
      },
      {
        "img": "assets/images/treanding/treanding21.png",
      },
      {
        "img": "assets/images/treanding/treanding22.png",
      },
      {
        "img": "assets/images/treanding/treanding23.png",
      },
      {
        "img": "assets/images/treanding/treanding24.png",
      },
      {
        "img": "assets/images/bollywood/mv1.png",
      },
      {
        "img": "assets/images/bollywood/mv2.png",
      },
      {
        "img": "assets/images/bollywood/mv7.png",
      },
      {
        "img": "assets/images/bollywood/mv8.png",
      },
      {
        "img": "assets/images/bollywood/mv9.png",
      },
    ];
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .6,
          crossAxisCount: 2,
        ),
        itemCount: treandingBollywood.length,
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
                  arguments: treandingBollywood[index]["img"],
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  treandingBollywood[index]["img"],
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
