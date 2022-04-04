import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:realstate_app/dashboard.dart';
import 'package:realstate_app/homescreen.dart';

class House3 extends StatelessWidget {
  const House3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Stack(
                children: [
                  Container(
                    child: Carousel(
                      showIndicator: false,
                      dotSize: 4,
                      images: [
                        NetworkImage(
                            'https://photos.zillowstatic.com/fp/d62204ac1b59571f394051caab6751c5-uncropped_scaled_within_1536_1152.webp'),
                        NetworkImage(
                            'https://photos.zillowstatic.com/fp/0a90918274ff7b4f80c51cc8d65d80d2-uncropped_scaled_within_1536_1152.webp'),
                        NetworkImage(
                            'https://photos.zillowstatic.com/fp/76ccc68e87473d2e4a345356c9098b7d-uncropped_scaled_within_1536_1152.webp'),
                        NetworkImage(
                            'https://photos.zillowstatic.com/fp/be095a253ec2ccc6d1af8653dc6da5b8-uncropped_scaled_within_1536_1152.webp')
                      ],
                    ),
                    height: 300,
                    color: Colors.black,
                  ),
                  Positioned(
                    left: 20,
                    top: 25,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.black,
                        ),
                        height: 45,
                        width: 45,
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.black,
                      ),
                      height: 45,
                      width: 45,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "\$140,000",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\karachi Dha Phase 8, Zulfiqar Street 7",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "20 Hours ago",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 20, top: 25, bottom: 15),
                  child: Text(
                    'House Information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Details('1461', 'Square Foot'),
                      const SizedBox(
                        width: 15,
                      ),
                      Details('4', 'Bedrooms'),
                      const SizedBox(
                        width: 15,
                      ),
                      Details('2', 'Bathrooms'),
                      const SizedBox(
                        width: 15,
                      ),
                      Details('2', 'Bathrooms'),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  'The social unit that lives in a house is known as a household. Most commonly, a household is a family unit of some kind, although households may also be other social groups, such as roommates or, in a rooming house, unconnected individuals. Some houses only have a dwelling space for one family or similar-sized group; larger houses called townhouses or row houses may contain numerous family dwellings in the same structure. A house may be accompanied by outbuildings, such as a garage for vehicles or a shed for gardening equipment and tools. A house may have a backyard or a front yard or both, which serve as additional areas where inhabitants can relax or eat.',
                  style: TextStyle(color: Color.fromARGB(255, 86, 81, 81)),
                ),
              )
            ]),
          ],
        ),
      ),
      floatingActionButton: AddJobButton(),
    );
  }
}

Widget Details(req, req2) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(10),
      // color: Colors.black,
    ),
    height: 100,
    width: 100,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            req,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          req2,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
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
            boxShadow: [BoxShadow(blurRadius: 10)],
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
