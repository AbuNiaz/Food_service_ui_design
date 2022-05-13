import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Last_Page/confirm.dart';

class OtpCode extends StatelessWidget {
  const OtpCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.white12,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Center(
                child: Text(
              'Insert your OTP Code',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 50,
                  color: Colors.white,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  color: Colors.white,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  color: Colors.white,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  color: Colors.white,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  color: Colors.white,
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfirmOrder()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Payment',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
