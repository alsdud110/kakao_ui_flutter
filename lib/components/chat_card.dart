import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/chat.dart';
import 'package:flutter_kakao/screens/chat_room_screen.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;
  const ChatCard({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(chat.image),
                ),
                title: Text(
                  chat.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(chat.content),
                contentPadding: const EdgeInsets.all(0),
              ),
            ),
            Column(
              children: [
                Text(
                  chat.time,
                  style: const TextStyle(
                    color: Color(0xFFa5a5a5),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                if (chat.count != "0")
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFde6344),
                    ),
                    child: Text(
                      chat.count,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ChatRoomScreen(),
          ),
        );
      },
    );
  }
}
