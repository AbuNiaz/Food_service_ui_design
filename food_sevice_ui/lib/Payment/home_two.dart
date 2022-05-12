import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Payment/otp.dart';

class HomePageTwo extends StatelessWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Bkash Payment'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Amount :',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Card(
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration()),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'A. Number :',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Card(
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration()),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'PIN :',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Card(
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const TextField(
                          obscureText: true, decoration: InputDecoration()),
                    ),
                  )
                ],
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpCode()));
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
