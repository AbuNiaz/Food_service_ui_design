import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Burger_details/burger_page.dart';

class BurgerListTwo extends StatefulWidget {
  @override
  State<BurgerListTwo> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerListTwo> {
  @override
  Widget build(BuildContext context) {
    int item = 10;
    //
    //
    Widget simpleBurger = Container(
      height: 115,
      width: 130,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/b2.jpg",
            ),
          ),
          shape: BoxShape.circle),
    );
    //
    //
    Widget chickenBurder = Container(
      height: 115,
      width: 130,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/b3.jpg",
            ),
          ),
          shape: BoxShape.circle),
    );
    //
    //

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Most Pupoler:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 240,
            margin: const EdgeInsets.only(top: 0, left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: item,
              itemBuilder: (context, index) {
                bool reverse = index.isEven;
                return Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      margin:
                          const EdgeInsets.only(left: 15, bottom: 40, top: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BurgerPage(
                                img: "images/b3.jpg",
                                price: "150 BDT",
                                title: "Chicken Burger",
                              ),
                            ),
                          );
                        },
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  reverse ? "Chicken Burger" : "Simple Burger",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    const Spacer(),
                                    const Text(
                                      "150 BDT",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Icon(Icons.add),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          elevation: 3,
                          margin: const EdgeInsets.all(10),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: reverse ? 48 : 48,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BurgerPage(
                                img: "images/b3.jpg",
                                price: "150 BDT",
                                title: "Chicken Burger",
                              ),
                            ),
                          );
                        },
                        child: reverse ? chickenBurder : simpleBurger,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
