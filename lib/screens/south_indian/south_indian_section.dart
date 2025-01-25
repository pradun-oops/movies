import 'package:flutter/material.dart';
import 'package:reelrecap/helper/page_routes.dart';

class SouthIndianSection extends StatelessWidget {
  const SouthIndianSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> treandingSouthIndian = [
      {
        "img": "assets/images/treanding/treanding25.png",
      },
      {
        "img": "assets/images/treanding/treanding26.png",
      },
      {
        "img": "assets/images/treanding/treanding27.png",
      },
      {
        "img": "assets/images/treanding/treanding28.png",
      },
      {
        "img": "assets/images/treanding/treanding29.png",
      },
      {
        "img": "assets/images/treanding/treanding30.png",
      },
      {
        "img": "assets/images/treanding/treanding31.png",
      },
      {
        "img": "assets/images/treanding/treanding32.png",
      },
      {
        "img": "assets/images/treanding/treanding33.png",
      },
      {
        "img": "assets/images/treanding/treanding34.png",
      },
      {
        "img": "assets/images/treanding/treanding35.png",
      },
      {
        "img": "assets/images/treanding/treanding36.png",
      },
      {
        "img": "assets/images/southIndian/mv1.png",
      },
      {
        "img": "assets/images/southIndian/mv2.png",
      },
      {
        "img": "assets/images/southIndian/mv3.png",
      },
      {
        "img": "assets/images/southIndian/mv4.png",
      },
      {
        "img": "assets/images/southIndian/mv5.png",
      },
      {
        "img": "assets/images/southIndian/mv6.png",
      },
      {
        "img": "assets/images/southIndian/mv7.png",
      },
      {
        "img": "assets/images/southIndian/mv8.png",
      },
      {
        "img": "assets/images/southIndian/mv9.png",
      },
      {
        "img": "assets/images/southIndian/mv10.png",
      },
      {
        "img": "assets/images/southIndian/mv11.png",
      },
    ];
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .6,
          crossAxisCount: 2,
        ),
        itemCount: treandingSouthIndian.length,
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
                  arguments: treandingSouthIndian[index]["img"],
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  treandingSouthIndian[index]["img"],
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
