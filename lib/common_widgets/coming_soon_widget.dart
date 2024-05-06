import 'package:flutter/material.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget(
      {super.key,
      required this.title,
      required this.date,
      required this.image});

  final String title;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                alignment: Alignment.center,
                height: 300,
                width: 315,
                fit: BoxFit.cover,
                image),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          date,
          style: const TextStyle(
              fontSize: 14,
              color: Color(0xffAFAFAF),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
