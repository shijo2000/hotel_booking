import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: HotelDetailsPage());
  }
}

class HotelDetailsPage extends StatelessWidget {
  static final String path = "lib/src/pages/details.dart";
  final String image = "assets/hotel/room3.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: 400,
                foregroundDecoration: BoxDecoration(color: Colors.black26),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Sahara Star Hotel\nMumbai",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "8.4/85 reviews",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(32.0),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.purple,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.purple,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.purple,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.purple,
                                          ),
                                          Icon(
                                            Icons.star_half,
                                            color: Colors.purple,
                                          ),
                                        ],
                                      ),
                                      Text.rich(
                                        TextSpan(children: [
                                          WidgetSpan(
                                              child: Icon(
                                                Icons.location_on,
                                                size: 16,
                                                color: Colors.grey,
                                              )),
                                          TextSpan(text: "8 km to centrum")
                                        ]),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  )),
                              Column(
                                children: [
                                  Text(
                                    "₹ 20000",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text("/per night",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: Text("Book Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Description".toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Offering four food & beverage establishments and hundreds of rooms, Sahara Star is known for its "
                                "distinctive, star-shaped dome. It houses a 4,000 square foot Marine Aquarium, and has the world's "
                                "only private dining room within an aquarium. All guest rooms at this hotel are equipped with "
                                "modern amenities such as flat-screen TVs, motorized curtains, and glass bathrooms. Mood lighting "
                                "is standard, and luxury suites are available. The hotel's services include airline reservations, "
                                "babysitting, courier services, currency exchange, and laundry. Guests can enjoy a full gymnasium "
                                "while at this property, or stroll around the tropical lagoon. The hotel's restaurants include "
                                "The Earth Plate, which has truly global cuisine. The Ocean private dining room is located "
                                "within an aquarium and has an impressively large menu that can be personalised. Sahara Star is located "
                                "just metres from Mumbai's international airport. Juhu Beach is less than five kilometres away. The "
                                "iconic Gateway of India is 22 kilometres south of this property.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white54,
            elevation: 0,
            selectedItemColor: Colors.purple,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search,), label: " Search",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: " Favorites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: " Settings"),
            ]
        )
    );
  }
}
