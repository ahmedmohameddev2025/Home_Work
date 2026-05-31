import 'package:chat_bot/features/chat/widgets/chat_app_bar.dart';
import 'package:chat_bot/features/chat/widgets/chat_body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: const ChatAppBar()),
      body: const ChatBody(),
    );
  }
}
