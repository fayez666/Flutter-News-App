import 'package:challenge_flutter/models/news_items.dart';
import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.newsItem,
  });

  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            newsItem.imgUrl,
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsItem.category,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsItem.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(newsItem.imgUrl),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    newsItem.author,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  const Text(
                    "•",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  Expanded(
                    child: Text(
                      newsItem.time,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
