import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class MyChat extends StatelessWidget {
  final String text;
  final String time;
  const MyChat({super.key, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            time,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFfeec34),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(text),
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(me.backgroundImage),
          ),
        ],
      ),
    );
  }
}
