
import 'package:flutter/material.dart';

class CinemaNearYouWidget extends StatelessWidget {
  const CinemaNearYouWidget(
      {super.key,
      required this.placeTitle,
      required this.workedTime,
      required this.distance,
      required this.imageCinema,
      required this.star});

  final String placeTitle;
  final String workedTime;
  final String star;
  final String distance;
  final String imageCinema;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
                width: 76, fit: BoxFit.cover, height: 76, imageCinema),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      size: 18,
                      Icons.place,
                      color: Color(0xff636882),
                    ),
                    Text(
                      distance,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xff54A8E5)),
                    )
                  ],
                ),
                Text(
                  placeTitle,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  workedTime,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xffBABFC9),
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Icon(
                Icons.star,
                size: 18,
                color: Color(0xffFFA235),
              ),
              Text(
                star,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xffBABFC9),
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
