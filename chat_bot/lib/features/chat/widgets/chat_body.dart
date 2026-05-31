import 'package:chat_bot/features/chat/widgets/chat_input.dart';
import 'package:chat_bot/features/chat/widgets/empty_chat_content.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(29), child: EmptyChatContent()),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 29, right: 29),
            child: const ChatInputField(),
          ),
        ),
      ],
    );
  }
}
