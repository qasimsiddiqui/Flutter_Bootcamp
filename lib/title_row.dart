import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.starCount});

  final String title;
  final String subTitle;
  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                subTitle,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text(
                starCount.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
