import 'package:flutter/material.dart';

class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        height: 500,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/b4.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        children: const [
                          Text(
                            'Simple Burger',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Best Burger',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                elevation: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
