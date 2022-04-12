import 'package:flutter/material.dart';

class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        elevation: 0,
      ),
      body: Container(
        height: 500,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 40,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(
                                "images/b5.jpg",
                              ))),
                        )
                      ],
                    )
                  ],
                )),
      ),
    );
  }
}
