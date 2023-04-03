import 'package:flutter/material.dart';

import '../../models/news_items.dart';
import '../widgets/description_card.dart';
import '../widgets/details_card.dart';

class DetailsPage extends StatelessWidget {
  static const String routeName = "/details";
  final NewsItem item;
  const DetailsPage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: size.height,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      item.imgUrl,
                    ),
                  )),
              child: Stack(children: [
                DetailsCard(item: item),
                Positioned(
                  top: 320,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Trending",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                "•",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                item.time,
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DescriptionCard(item: item),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
