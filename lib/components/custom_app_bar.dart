import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: Container(
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {},
          iconSize: 30.0,
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        Container(
          decoration:
              BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            iconSize: 30.0,
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          decoration:
              BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            iconSize: 30.0,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
