import 'package:flutter/material.dart';

class ChatIconButton extends StatelessWidget {
  final Icon icon;
  const ChatIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: 25,
      onPressed: () {},
      padding: const EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
