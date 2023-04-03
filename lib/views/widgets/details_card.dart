import 'package:challenge_flutter/models/news_items.dart';
import 'package:challenge_flutter/views/widgets/app_bar_icon.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.item,
  });

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBarIcon(
                  icon: Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  opacity: 0.7,
                  press: () => Navigator.pop(context),
                ),
                Row(
                  children: [
                    AppBarIcon(
                      icon: Icons.bookmark_outline,
                      color: Colors.white,
                      opacity: 0.7,
                      press: () {},
                    ),
                    const SizedBox(
                      width: 5.9,
                    ),
                    AppBarIcon(
                      icon: Icons.more_horiz,
                      color: Colors.white,
                      opacity: 0.7,
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  item.category,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}


