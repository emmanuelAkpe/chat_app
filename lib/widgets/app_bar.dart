import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar(
      {super.key,
      required int elevation,
      required Color backgroundColor,
      required Icon leading,
      required Text title,
      required List<IconButton> actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
      title: Text(
        'Feed',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ))
      ],
    );
  }
}
