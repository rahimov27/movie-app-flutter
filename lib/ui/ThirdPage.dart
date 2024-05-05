import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/common_widgets/blue_button.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1E25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Complicated Carousel Demo'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 300.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.6,
                  initialPage: _currentIndex,
                  enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay true for continue animation
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 7),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: [
                  'https://static.posters.cz/image/1300/poster/matrix-revolutions-neo-i104635.jpg',
                  'https://static.posters.cz/image/1300/art-photo/matrix-choose-your-path-i153524.jpg',
                  'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1500x1500/products/84652/93459/the-matrix-revolutions-original-movie-poster-advance-style-buy-now-at-starstills__60108.1572249638.jpg?c=2&imbypass=on',
                ].map(
                  (item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(item),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _carouselController.previousPage();
                    },
                    child: const Icon(Icons.arrow_left),
                  ),
                  const SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      _carouselController.nextPage();
                    },
                    child: const Icon(Icons.arrow_right),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Matrix",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Director: Destin Daniel Cretton",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffBABFC9),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 1,
                            height: 20,
                            color: const Color(0xff696D74),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Color(0xffFFA235),
                      ),
                      const Text(
                        "4,9",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffBABFC9),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 74,
                          height: 29,
                          color: const Color(0xff252932),
                          child: const Center(
                              child: Text(
                            "Action",
                            style: TextStyle(
                              color: Color(0xffB2B5BB),
                            ),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 134,
                          height: 29,
                          color: const Color(0xff252932),
                          child: const Center(
                              child: Text(
                            "Fiction Fantasy",
                            style: TextStyle(
                              color: Color(0xffB2B5BB),
                            ),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 83,
                          height: 29,
                          color: const Color(0xff252932),
                          child: const Center(
                            child: Text(
                              "02h 43m",
                              style: TextStyle(
                                color: Color(0xffB2B5BB),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 27,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Synopsis",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Martial-arts master Shang-Chi confronts the past he thought he left behind when he's drawn into...",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffBABFC9),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    BlueButton(
                      buttonText: "Book ticket",
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
