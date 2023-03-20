import 'package:flutter/material.dart';

class SubScreenOne extends StatelessWidget {
  const SubScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child:
                        Image.asset('assets/images/mansion-ge67505a33_1920.jpg'),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width / 20,
                    left: MediaQuery.of(context).size.width / 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SubScreenOne(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 400),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 40),
                        ),
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.width / 10,
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width / 20,
                    top: MediaQuery.of(context).size.width / 20,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width / 400),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 40),
                      ),
                      width: MediaQuery.of(context).size.width / 10,
                      height: MediaQuery.of(context).size.width / 10,
                      child: Center(
                        child: SizedBox(
                          width: 30,
                          child:
                              Icon(Icons.favorite, color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '\$200.000',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Jenison, MI 49428, SF',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          '20 hours ago    ',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 10,
                    ),
                    Text(
                      'House information',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 5,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          const ROwLIst(
                            number: '1.416',
                            baSETExt: 'Square foot',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 40,
                          ),
                          const ROwLIst(
                            number: '4',
                            baSETExt: 'Bedrooms',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 40,
                          ),
                          const ROwLIst(
                            number: '2',
                            baSETExt: 'Bathrooms',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 40,
                          ),
                          const ROwLIst(
                            number: '2',
                            baSETExt: 'Garage',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 280,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Flawless 2 story on a family friendly cul-de-sac in the'
                              'heart of blue Valley! Walk in to an open floor'
                              ' plan flooded w day light, formal dining.Upon entering the house, you are greeted with a spacious foyer with polished hardwood floors that extend throughout the main level. To the right of the foyer is a formal dining room, complete with a chandelier and large bay window overlooking the front yard. To the left of the foyer is a cozy living room with a brick fireplace and built-in bookshelves.',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20),
                            ),
                            height: MediaQuery.of(context).size.width / 1,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(50, 0, 49, 140),
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.width / 40)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            elevation: 50,
            backgroundColor: Color.fromARGB(255, 0, 0, 255),
            onPressed: () {},
            label: Container(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message),
                  Text(" Message"),
                ],
              ),
            ),
          ),
          SizedBox(width: 50,),
          FloatingActionButton.extended(
            elevation: 50,
            backgroundColor: Color.fromARGB(255, 0, 0, 255),
            onPressed: () {},
            label: SizedBox(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call),
                  Text(" Call"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ROwLIst extends StatelessWidget {
  const ROwLIst({
    required this.number,
    required this.baSETExt,
    Key? key,
  }) : super(key: key);

  final String number;
  final String baSETExt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width / 20),
          color: const Color.fromARGB(50, 0, 49, 140)),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width / 40),
          Text(
            '$number',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: MediaQuery.of(context).size.width / 40),
          Text(
            '$baSETExt',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 40,
          ),
        ],
      ),
    );
  }
}
