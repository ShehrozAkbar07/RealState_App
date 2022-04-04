import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Container(
        height: 50,
        // color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            categories('220 USD'),
            SizedBox(
              width: 5,
            ),
            categories('For Sale'),
            SizedBox(
              width: 5,
            ),
            categories('3-4 Bedrooms'),
            SizedBox(
              width: 5,
            ),
            categories('Garages'),
            SizedBox(
              width: 5,
            ),
            categories('Pools'),
            SizedBox(
              width: 5,
            ),
          ]),
        ),
      ),
    );
  }
}

Widget categories(String enter) {
  return Container(
    height: 30,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
      child: Text(
        enter,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 214, 208, 208),
        borderRadius: BorderRadius.circular(10)),
  );
}
