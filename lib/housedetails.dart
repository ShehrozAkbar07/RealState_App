import 'package:flutter/material.dart';
import 'package:realstate_app/House1.dart';
import 'package:realstate_app/House2.dart';
import 'package:realstate_app/House3.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const House1()));
          },
          child: House(
              'https://photos.zillowstatic.com/fp/90ca77bbe3fbaf7f00e9e4f27b164d94-cc_ft_768.webp')),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => House2()));
        },
        child: House(
            'https://photos.zillowstatic.com/fp/5c1257e66102a42402a53ee1d8c96232-cc_ft_768.webp'),
      ),

      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => House3()));
        },
        child: House(
            'https://photos.zillowstatic.com/fp/f0a9f728d5a8b45054ee6388519a938c-cc_ft_768.webp'),
      ),

      //  image: DecorationImage(image:  Image.network('sfsdf.com')),
    ]));
  }
}

// Widget ghg() {
//   return Container(
//       height: 250,
//       width: 320,
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: const Image(
//                     fit: BoxFit.cover,
//                     height: 180,
//                     width: 320,
//                     image: NetworkImage(
//                         "https://photos.zillowstatic.com/fp/1a787c9dbd3e746967e7481f07761109-cc_ft_768.webp")),
//               ),
//               Positioned(
//                 top: 5,
//                 left: 270,
//                 child: Container(
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Icon(Icons.favorite_rounded),
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 15),
//             child: Row(
//               children: const [
//                 Text(
//                   "\$140,000",
//                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   '151- Karachi Machar Colony',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             children: const [
//               Text(
//                 '4 Bedroom / 2 Bedroom / 1,416 sqft',
//                 style: TextStyle(fontWeight: FontWeight.w600),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//             ],
//           ),
//         ],
//       )

//       //  image: DecorationImage(image:  Image.network('sfsdf.com')),

//       );
// }

Widget House(String urs) {
  return Container(
    height: 250,
    child: Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                  fit: BoxFit.cover,
                  height: 180,
                  width: 320,
                  image: NetworkImage(urs)),
            ),
            Positioned(
              left: 270,
              top: 5,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.favorite_rounded),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Row(
            children: const [
              Text(
                '\$140,000',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Karachi, Malir Cantt Street 6',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: const [
              Text(
                '4 Bedroom / 2 bedrooms / 1,416 sqft',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    ),
  );
}
