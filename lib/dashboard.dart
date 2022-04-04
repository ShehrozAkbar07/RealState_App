import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
                ),
                height: 45,
                width: 45,
                child: const Icon(Icons.sort_rounded),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
                ),
                height: 45,
                width: 45,
                child: const Icon(Icons.insights_rounded),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'City',
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
          const Text(
            'San Francisco',
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ]),
        height: 200,
      ),
    );
  }
}
