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
                  context.watch<MovieProvider>().imageURL.isNotEmpty
                      ? context.watch<MovieProvider>().imageURL
                      : "https://static.posters.cz/image/1300/poster/the-batman-unmask-the-truth-i133030.jpg",
                  context.watch<MovieProvider>().imageURL.isNotEmpty
                      ? context.watch<MovieProvider>().imageURL
                      : "https://rukminim2.flixcart.com/image/850/1000/l0bbonk0/poster/t/y/x/medium-the-batman-2022-movie-poster-18-x-12-inch-300-gsm-m0066-original-imagc3zmdruhr6y7.jpeg?q=90&crop=false",
                  context.watch<MovieProvider>().imageURL.isNotEmpty
                      ? context.watch<MovieProvider>().imageURL
                      : "https://xl.movieposterdb.com/22_05/2022/1877830/xl_1877830_acb4575c.jpg",
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
                            context
                                    .watch<MovieProvider>()
                                    .cinemaTitle
                                    .isNotEmpty
                                ? context.watch<MovieProvider>().cinemaTitle
                                : "Batman",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            context
                                    .watch<MovieProvider>()
                                    .cinemaTitle
                                    .isNotEmpty
                                ? context.watch<MovieProvider>().director
                                : "Director Matt Reeves",
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
                        context.watch<MovieProvider>().ratings.isNotEmpty
                            ? context.watch<MovieProvider>().ratings
                            : "4.9/10",
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
                              context.watch<MovieProvider>().type.isNotEmpty
                                  ? context.watch<MovieProvider>().type
                                  : "Movie",
                              style: TextStyle(
                                color: Color(0xffB2B5BB),
                              ),
                            ),
                          ),
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
                              context
                                      .watch<MovieProvider>()
                                      .releasedDate
                                      .isNotEmpty
                                  ? context.watch<MovieProvider>().releasedDate
                                  : "Mar 22 2024",
                              style: TextStyle(
                                color: Color(0xffB2B5BB),
                              ),
                            ),
                          ),
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
                              context.watch<MovieProvider>().runtime.isNotEmpty
                                  ? context.watch<MovieProvider>().runtime
                                  : "126 min",
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
                      context.watch<MovieProvider>().genre.isNotEmpty
                          ? context.watch<MovieProvider>().genre
                          : "Action, Adventure, Sci-Fi",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      context.watch<MovieProvider>().plot.isNotEmpty
                          ? context.watch<MovieProvider>().plot
                          : "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffBABFC9),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    BlueButton(
                      myFunc: () {},
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
