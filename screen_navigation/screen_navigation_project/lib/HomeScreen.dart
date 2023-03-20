import 'package:flutter/material.dart';
import 'package:screen_navigation_project/SubScreenOne.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
                const Text(
                  "  City",
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 13, 1), fontSize: 20),
                ),
                const Text(
                  " San Fransico",
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 28, 51),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 20),
                          color: Colors.blue,
                        ),
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "<\$220.000",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 20),
                          color: Colors.blue,
                        ),
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "For Sale",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 20),
                          color: Colors.blue,
                        ),
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "3-4 beds",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 20),
                          color: Colors.blue,
                        ),
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Most liked",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 199, 223, 255),
                    borderRadius: BorderRadiusDirectional.circular(20)
                  ),
                  height: 550,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SubScreenOne(),
                            ),
                          );
                        },
                        child: const CardWidget(
                          specS: '4 bedrooms / 2 bathrooms / 1.416 sq.ft',
                          imageAddress:
                              'assets/images/mansion-ge67505a33_1920.jpg',
                          dollars: '200',
                        ),
                      ),
                      const CardWidget(
                        specS: '5 bedrooms / 3 bathrooms / 2.416 sq.ft',
                        imageAddress: 'assets/images/pexels-pixabay-208736.jpg',
                        dollars: '400',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 50,
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
        onPressed: () {},
        label: Row(
          children: [
            Icon(Icons.map_rounded),
            Text(" Map View"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.specS,
    required this.dollars,
    required this.imageAddress,
  }) : super(key: key);

  final String dollars;
  final String imageAddress;
  final String specS;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, bottom: 30),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(MediaQuery.of(context).size.width / 30),
                    topRight:
                        Radius.circular(MediaQuery.of(context).size.width / 30),
                  ),
                  child: Image.asset(
                    imageAddress,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width / 30),
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.width / 30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "   \$$dollars",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 12),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20),
                          Text(
                            "Jenison, MI 49428",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 51, 68, 77),
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 30),
                          ),
                        ],
                      ),
                      Text(
                        "   $specS",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 25, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 25),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width / 30,
            top: 20,
            child: Container(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.height / 20,
              child: Icon(Icons.favorite,
              color: Colors.white,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 50,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
