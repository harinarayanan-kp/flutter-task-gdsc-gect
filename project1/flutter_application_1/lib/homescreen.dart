import 'package:flutter/material.dart';

class HomeScreenOne extends StatelessWidget {
  const HomeScreenOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 248, 248),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {
                      
                    }, icon: const Icon(Icons.menu)),
                    const SizedBox(width: 80),
                    const Text(
                      "Natur.",
                      style: TextStyle(
                          fontSize: 30, color: Color.fromARGB(255, 63, 45, 39)),
                    ),
                    const SizedBox(width: 80),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.face))
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 248, 248),
                      borderRadius: BorderRadiusDirectional.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Color.fromARGB(255, 231, 168, 73),
                          )),
                      const SizedBox(width: 20),
                      const Text(
                        "Search for Products",
                        style:
                            TextStyle(color: Color.fromARGB(255, 231, 168, 73)),
                      ),
                      const SizedBox(width: 50),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            size: 30,
                            color: Color.fromARGB(255, 231, 168, 73),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      "New",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 63, 45, 39)),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Popular",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 165, 137, 127)),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Sale",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 165, 137, 127)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: MyCardOne(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Stack(
                      children: [
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            child: SizedBox(
                              height: 300,
                              child:
                                  Image.asset('assets/images/EwEDQfjTKPeb.png'),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 245,
                          left: 45,
                          child: Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                              "\$190"),
                        ),
                        const Positioned(
                            left: 30,
                            top: 280,
                            child: Text(
                                style: TextStyle(
                                    color: Color.fromARGB(99, 56, 32, 1),
                                    fontSize: 12),
                                "Arc Rockingchair"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "   Categories",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 63, 45, 39)),
            ),
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.chair_rounded)),
                        Text("Chairs"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCardOne extends StatelessWidget {
  const MyCardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(20),
            child: Image.asset(
                'assets/images/photo-1565105336789-e9392607c17b 1.png'),
          ),
        ),
        const Positioned(
          top: 245,
          left: 45,
          child: Text(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              "\$230"),
        ),
        Positioned(
          top: 270,
          left: 150,
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(155, 35, 147, 1),
                borderRadius: BorderRadius.circular(5)),
            width: 60,
            height: 60,
            child: Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/images/E7a7mmS0IedY.png'),
              ),
            ),
          ),
        ),
        const Positioned(
            left: 30,
            top: 280,
            child: Text(
                style: TextStyle(
                    color: Color.fromARGB(99, 56, 32, 1), fontSize: 12),
                "Osmind Armchair"))
      ],
    );
  }
}