import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/common_widgets/blue_button.dart';
import 'package:movie_app/providers/MovieProvider.dart';
import 'package:provider/provider.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

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
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1700),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: [
                  context.watch<MovieProvider>().imageURL,
                  context.watch<MovieProvider>().imageURL,
                  context.watch<MovieProvider>().imageURL,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.watch<MovieProvider>().cinemaTitle,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            context.watch<MovieProvider>().director,
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
                      Text(
                        context.watch<MovieProvider>().ratings,
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
                          child: Center(
                              child: Text(
                            context.watch<MovieProvider>().type,
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
                          width: 110,
                          height: 29,
                          color: const Color(0xff252932),
                          child: Center(
                              child: Text(
                            context.watch<MovieProvider>().releasedDate,
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
                          child: Center(
                            child: Text(
                              context.watch<MovieProvider>().runtime,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.watch<MovieProvider>().genre,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      context.watch<MovieProvider>().plot,
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
