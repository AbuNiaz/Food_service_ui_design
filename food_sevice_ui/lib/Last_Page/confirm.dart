import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Home_One/hamberger.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          margin: const EdgeInsets.only(top: 60),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/like.png',
                      ),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Confirmation",
                  style: TextStyle(fontSize: 26),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "You have successfully",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "completed your payment procedure.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 280,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 40,
                  color: Colors.blue.shade900,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Hamberger()));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade900),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    "Back To Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ])),
    ));
  }
}
