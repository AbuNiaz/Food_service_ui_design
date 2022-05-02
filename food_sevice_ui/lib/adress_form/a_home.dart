import 'package:flutter/material.dart';

class AdressHome extends StatelessWidget {
  const AdressHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Address'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('ABU NIAZ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text('017xxxxxxx21',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          Text('Dattapara, Asulia',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          Text('Savar, Dhaka',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ],
                      ),
                    ),
                    const Icon(Icons.navigate_next)
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 30,
                color: Colors.white10,
                child: const Text('Add New Address',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
