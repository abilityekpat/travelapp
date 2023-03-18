import 'package:flutter/material.dart';
import 'package:travellers/hotel.dart';
import 'package:travellers/sidebar_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Hotel_box> box = [
    Hotel_box("Nirvana Hotels", "120+", "4.3 (1.2k people)"),
    Hotel_box("Sahid Raya Tokyo", "320", "8.3 (1.6k people)"),
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      key: _key,
      drawer: const SidebarMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                  ),
                  const SizedBox(width: 210),
                  const Icon(
                    Icons.notifications_active,
                    size: 30,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/png/photo.png",
                        ),
                      ),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Where",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "will you go today",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 45,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "what will you like to discover?",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ))),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 175, 117),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.hotel_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Hotel")
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 175, 117),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.apartment_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Apartment")
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 175, 117),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.house_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Rent House"),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 175, 117),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text("More")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: const [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 170),
                  Text(
                    "See all",
                    style: TextStyle(color: Color.fromARGB(255, 24, 175, 117)),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...box.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: const AssetImage(
                                "assets/images/jpeg/background.jpeg",
                              ),
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.darken),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/png/photo.png",
                                          ),
                                        ),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/png/photo.png",
                                          ),
                                        ),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "120+",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 120),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Nirvana Hotels",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "4.3 (1.2k people)",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: const [
                  Text(
                    "People Recomended",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    "See all",
                    style: TextStyle(color: Color.fromARGB(255, 24, 175, 117)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
