import 'package:flutter/material.dart';
import 'package:reelrecap/helper/page_routes.dart';
import 'package:reelrecap/widgets/tab_bar_text.dart';

class TreandingSection extends StatelessWidget {
  const TreandingSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> treandingHollywood = [
      {
        "img": "assets/images/treanding/treanding1.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding2.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding3.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding4.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding5.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding6.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding7.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding8.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding9.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding10.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding11.png",
        "movie_name": "Example",
      },
      {
        "img": "assets/images/treanding/treanding12.png",
        "movie_name": "Example",
      },
    ];
    List<Map<String, dynamic>> treandingBollywood = [
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
    ];
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
    ];
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TabBarText(text: "Trending Hollywood"),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: treandingHollywood.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      width: 180,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.ROUTE_DETAILS,
                            arguments: treandingHollywood[index],
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
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TabBarText(
                  text: "Trending Bollywood",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: treandingBollywood.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      width: 180,
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
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TabBarText(
                  text: "Trending South Indian",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: treandingSouthIndian.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      width: 180,
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
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TabBarText(
                  text: "Trending Anime",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: treandingAnime.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      width: 180,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
