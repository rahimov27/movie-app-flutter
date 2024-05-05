import 'package:flutter/material.dart';
import 'package:movie_app/common_widgets/cinema_near_widget.dart';
import 'package:movie_app/common_widgets/coming_soon_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1E25),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(fontSize: 14, color: Color(0xffAFAFAF)),
                  ),
                  Text(
                    "Sagdii",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 48,
                  height: 48,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Search your favorite movie",
                hintStyle: TextStyle(fontSize: 14, color: Color(0xff6F7277)),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Coming soon",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ComingSoonWidget(
                    title: "Batman",
                    date: "December 2023",
                    image:
                        "https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2022/01/the-batman-new-poster.png?ssl=1",
                  ),
                  ComingSoonWidget(
                    title: "Avengers",
                    date: "September 2012",
                    image:
                        "https://image.tmdb.org/t/p/original/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg",
                  ),
                  ComingSoonWidget(
                    title: "Spectre 007",
                    date: "September 2023",
                    image:
                        "https://www.gamespot.com/a/uploads/scale_super/1179/11799911/2831213-spectre.jpg",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  "Cinema Near You",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xff696D74),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                CinemaNearYouWidget(
                  placeTitle: "Viva Cinema",
                  distance: "5,2 Kilometers",
                  star: "4,9",
                  workedTime: "Closed 10:00 PM",
                  imageCinema:
                      "https://media.timeout.com/images/106061572/image.jpg",
                ),
                CinemaNearYouWidget(
                  placeTitle: "Viva Cinema",
                  distance: "5,2 Kilometers",
                  star: "4,9",
                  workedTime: "Closed 10:00 PM",
                  imageCinema:
                      "https://media.timeout.com/images/106061572/image.jpg",
                ),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
