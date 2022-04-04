import 'package:flutter/material.dart';
import 'package:realstate_app/categories.dart';
import 'package:realstate_app/dashboard.dart';
import 'package:realstate_app/housedetails.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: const [
              Dashboard(),
              SizedBox(
                height: 3,
              ),
              Categories(),
              HouseDetails(),

              //     HouseDetails(),
              //   HouseDetails(),
            ]),
          ],
        ),
      ),
      floatingActionButton: const AddJobButton(),
    );
  }
}

class AddJobButton extends StatelessWidget {
  const AddJobButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 85),
      child: SizedBox(
        width: 140,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff000033),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: const [
              Icon(
                Icons.map_outlined,
                color: Colors.white,
              ),
              Text(
                'Map View',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
