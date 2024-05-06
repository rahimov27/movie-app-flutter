import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool _isButton1Active = true;

  void monthlySelected() {
    if (!_isButton1Active) {
      setState(() {
        _isButton1Active = true;
      });
    }
  }

  void yearlySelected() {
    if (_isButton1Active) {
      setState(() {
        _isButton1Active = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1E25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Second screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color(0xff32363D),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      AnimatedAlign(
                        alignment: _isButton1Active
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        duration: const Duration(milliseconds: 200),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 11.0, vertical: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 44,
                            decoration: BoxDecoration(
                              color: const Color(0xff54A8E5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              monthlySelected();
                            },
                            child: const Text(
                              "Now Showing",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              yearlySelected();
                            },
                            child: const Text(
                              "Upcoming",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Top Movies",
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
                  const SizedBox(
                    height: 12,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ExploreMovieWidget(
                          cinemaTitle: "The Godfather",
                          imageUrl:
                              "https://fms.wustl.edu/files/fms/Events/godfather.png",
                        ),
                        ExploreMovieWidget(
                          cinemaTitle: "Top Gun",
                          imageUrl:
                              "https://image.tmdb.org/t/p/original/jeGvNOVMs5QIU1VaoGvnd3gSv0G.jpg",
                        ),
                        ExploreMovieWidget(
                          cinemaTitle: "The Dark Knight",
                          imageUrl:
                              "https://image.tmdb.org/t/p/original/eP5NL7ZlGoW9tE9qnCdHpOLH1Ke.jpg",
                        ),
                        ExploreMovieWidget(
                          cinemaTitle: "Schindler's List",
                          imageUrl:
                              "https://image.tmdb.org/t/p/original/t7xhP8SQTVanzecvn1oQRVWCXTI.jpg",
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Recommended",
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
                  const SizedBox(
                    height: 12,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ExploreMovieWidget(
                          cinemaTitle: "Black Panther",
                          imageUrl:
                              "https://mir-s3-cdn-cf.behance.net/project_modules/hd/b7b57e67580317.5b3e67f6608a2.png",
                        ),
                        ExploreMovieWidget(
                          cinemaTitle:
                              "The Lord of the Rings: The Return of the King",
                          imageUrl:
                              "https://image.tmdb.org/t/p/original/uexxR7Kw1qYbZk0RYaF9Rx5ykbj.jpg",
                        ),
                        ExploreMovieWidget(
                          cinemaTitle: "The Dark Knight",
                          imageUrl:
                              "https://image.tmdb.org/t/p/original/eP5NL7ZlGoW9tE9qnCdHpOLH1Ke.jpg",
                        ),
                        ExploreMovieWidget(
                          cinemaTitle: "Schindler's List",
                          imageUrl:
                              "https://image.tmdb.org/t/p/original/t7xhP8SQTVanzecvn1oQRVWCXTI.jpg",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExploreMovieWidget extends StatelessWidget {
  const ExploreMovieWidget(
      {super.key, required this.imageUrl, required this.cinemaTitle});

  final String imageUrl;
  final String cinemaTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
                height: 250, width: 190, fit: BoxFit.cover, imageUrl),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            _concateTitle(cinemaTitle),
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star,
                  size: 18,
                  color: Color(0xffFFA235),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star,
                  size: 18,
                  color: Color(0xffFFA235),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star,
                  size: 18,
                  color: Color(0xffFFA235),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star,
                  size: 18,
                  color: Color(0xffFFA235),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star,
                  size: 18,
                  color: Color(0xffFFA235),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String _concateTitle(String title) {
    if (title.length <= 20) {
      return title;
    } else {
      return "${title.substring(0, 20)}...";
    }
  }
}
