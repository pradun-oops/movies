import 'package:flutter/material.dart';
import 'package:reelrecap/screens/anime/anime_section.dart';
import 'package:reelrecap/screens/bollywood/bollywood_sction.dart';
import 'package:reelrecap/screens/hollywood/hollywood_section.dart';
import 'package:reelrecap/screens/south_indian/south_indian_section.dart';
import 'package:reelrecap/screens/treanding/treanding_section.dart';
import 'package:reelrecap/widgets/tab_bar_text.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<Tab> tabs = [
    Tab(
      child: TabBarText(
        text: 'Trending',
      ),
    ),
    Tab(
      child: TabBarText(
        text: 'Bollywood',
      ),
    ),
    Tab(
      child: TabBarText(
        text: 'South Indian',
      ),
    ),
    Tab(
      child: TabBarText(
        text: 'Hollywood',
      ),
    ),
    Tab(
      child: TabBarText(
        text: 'Anime',
      ),
    ),
  ];
  List<Widget> tabContent = [
    TreandingSection(),
    BollywoodSction(),
    SouthIndianSection(),
    HollywoodSection(),
    AnimeSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.shade100,
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              text: "Reel",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: "Whispering",
              ),
              children: [
                TextSpan(
                  text: "Recap",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: TabBar(
              tabs: tabs,
              indicatorColor: Colors.black,
              indicatorWeight: 2,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              isScrollable: true,
            ),
          ),
        ),
        body: TabBarView(
          children: tabContent,
        ),
      ),
    );
  }
}
