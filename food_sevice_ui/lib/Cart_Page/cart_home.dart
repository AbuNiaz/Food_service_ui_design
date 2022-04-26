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
          children: const [Text("Hello")],
        ),
      ),
    );
  }
}
