import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Burger_details/burger_page.dart';

class BurgerList extends StatefulWidget {
  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    int item = 10;
    //
    //
    Widget simpleImage = Container(
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
    Widget chickenImage = Container(
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
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 10, left: 10),
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
                  margin: const EdgeInsets.only(left: 15, top: 5),
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
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(
                              reverse ? "Chicken Burger" : "Simple Burger",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
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
                                            BorderRadius.circular(10)),
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
                  top: reverse ? 58 : 58,
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
                    child: reverse ? chickenImage : simpleImage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
