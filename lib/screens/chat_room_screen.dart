import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/chat_icon_button.dart';
import 'package:flutter_kakao/components/my_chat.dart';
import 'package:flutter_kakao/components/other_chat.dart';
import 'package:flutter_kakao/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({super.key});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFb2c7da),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("홍길동", style: Theme.of(context).textTheme.headlineSmall),
        actions: const [
          Icon(
            FontAwesomeIcons.search,
            size: 20,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(FontAwesomeIcons.bars, size: 20),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    const TimeLine(time: "2023년 11월 04일 토요일"),
                    const OtherChat(
                        name: "홍길동", text: "새해 복 많이 받으세용", time: "오전 10:10"),
                    const MyChat(text: "그래 고맙다~~", time: "오전 10:30"),
                    ...List.generate(
                      chats.length,
                      (index) => chats[index],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                const ChatIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                Expanded(
                  child: TextField(
                    controller: _textController,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                const ChatIconButton(
                  icon: Icon(FontAwesomeIcons.smile),
                ),
                const ChatIconButton(
                  icon: Icon(FontAwesomeIcons.cog),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear();

    setState(() {
      chats.add(
        MyChat(
          text: text,
          time: DateFormat("a K:m")
              .format(DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
