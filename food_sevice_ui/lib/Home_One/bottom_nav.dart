import 'package:flutter/material.dart';

class Navber extends StatelessWidget {
  const Navber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.add_alert),
            ),
            const Spacer(),
            const Spacer(),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.turned_in),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
