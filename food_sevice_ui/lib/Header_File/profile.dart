import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/g5.jpg"),
                radius: 28,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                const Text(
                  "User Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "GOLD Member",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Text(
              "154 \$ CAN",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}
