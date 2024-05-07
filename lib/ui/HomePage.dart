import 'package:flutter/material.dart';
import 'package:movie_app/common_widgets/cinema_near_widget.dart';
import 'package:movie_app/common_widgets/coming_soon_widget.dart';
import 'package:movie_app/providers/MovieProvider.dart';
import 'package:movie_app/resources/resources.dart';
import 'package:movie_app/ui/ThirdPage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

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
                  child: Image(
                    image: AssetImage(Images.userprof),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  // You can update the movie data in real-time as the user types
                  Provider.of<MovieProvider>(context, listen: false)
                      .getData(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Search your favorite movie",
                  hintStyle: TextStyle(fontSize: 14, color: Color(0xff6F7277)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Trigger search when the search icon is clicked
                      Provider.of<MovieProvider>(context, listen: false)
                          .getData(controller.text);
                    },
                  ),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThirdPage(),
                          ),
                        );
                      },
                      child: ComingSoonWidget(
                        title: _concateTitle(Provider.of<MovieProvider>(context)
                                .cinemaTitle
                                .isNotEmpty
                            ? Provider.of<MovieProvider>(context).cinemaTitle
                            : "Batman"),
                        date: Provider.of<MovieProvider>(context)
                                .releasedDate
                                .isNotEmpty
                            ? Provider.of<MovieProvider>(context).releasedDate
                            : "03 Dec 2024",
                        image: Provider.of<MovieProvider>(context)
                                .imageURL
                                .isNotEmpty
                            ? Provider.of<MovieProvider>(context).imageURL
                            : "https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2022/01/the-batman-new-poster.png?ssl=1",
                      ),
                    ),
                    ComingSoonWidget(
                      title: "The Godfather",
                      image:
                          "https://fms.wustl.edu/files/fms/Events/godfather.png",
                      date: "24 Mar 1972",
                    ),
                    ComingSoonWidget(
                      title: "Top Gun Maverick",
                      image:
                          "https://m.media-amazon.com/images/I/71BokibfVUL._AC_SL1500_.jpg",
                      date: "27 May 2022",
                    ),
                    ComingSoonWidget(
                      title: "Dune 2",
                      image:
                          "https://deadline.com/wp-content/uploads/2024/01/MCDDUPA_WB018.jpg?w=800",
                      date: "22 Mar 2024",
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
      ),
    );
  }

  String _concateTitle(String title) {
    if (title.length <= 25) {
      return title;
    } else {
      return "${title.substring(0, 25)}...";
    }
  }
}
