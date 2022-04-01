import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  const BurgerList({Key? key}) : super(key: key);

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
      height: 95,
      child: Image.asset("images/b2.jpg"),
    );
    //
    //
    Widget chickenImage = Container(
      height: 95,
      child: Image.asset("images/b3.jpg"),
    );
    //
    //

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 15, right: index == item ? 15 : 0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            const Text(
                              "Burger",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  "15.95 \$ CAN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Container(
                                  height: 50,
                                  width: 50,
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
                      )),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 50 : 50,
                  child: GestureDetector(
                    onTap: () {},
                    child: reverse ? chickenImage : simpleImage,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
