import 'package:challenge_flutter/views/widgets/recommendation_card.dart';
import 'package:challenge_flutter/models/news_items.dart';
import 'package:challenge_flutter/views/widgets/app_bar_icon.dart';
import 'package:challenge_flutter/views/widgets/custom_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppBarIcon(icon: Icons.menu),
                  Row(
                    children: [
                      const AppBarIcon(icon: Icons.search),
                      const SizedBox(
                        width: 5.9,
                      ),
                      Stack(
                        children: const [
                          AppBarIcon(icon: Icons.notifications_outlined),
                          Positioned(
                            right: 1.5,
                            top: 1.5,
                            child: Text(
                              "•",
                              style: TextStyle(color: Colors.red, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              SectionTitle(
                text: "Breaking News",
                press: () {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              const CustomCarouselSilder(),
              SectionTitle(
                text: "Recommendation",
                press: () {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              ...news.map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: RecommendationCard(
                      newsItem: e,
                    ),
                  ))
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: GNav(
                backgroundColor: Colors.white,
                tabBackgroundColor: Colors.blue,
                activeColor: Colors.white,
                gap: 8,
                padding: EdgeInsets.all(12),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.web_sharp,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.bookmark_outline,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person_4_outlined,
                    text: 'Profile',
                  )
                ])),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TextButton(onPressed: press, child: const Text("View all"))
      ],
    );
  }
}
