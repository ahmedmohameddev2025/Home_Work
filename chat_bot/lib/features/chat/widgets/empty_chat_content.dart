import 'package:chat_bot/core/utils/assets.dart';
import 'package:chat_bot/features/chat/widgets/suggestion_group.dart';
import 'package:flutter/material.dart';

class EmptyChatContent extends StatelessWidget {
  const EmptyChatContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SuggestionGroup(
          categoryName: 'Explain',
          categoryIcon: Assets.explainIcon,
          items: [
            'Explain Quantum physics',
            'What are wormholes explain like i am 5',
          ],
        ),
        SuggestionGroup(
          categoryName: 'Write and Edit',
          categoryIcon: Assets.writeAndEditIcon,
          items: [
            'Write a tweet about global warming',
            'Write a poem about flower and love',
            'Write a rap song lyrics about',
          ],
        ),
        SuggestionGroup(
          categoryName: 'Translate',
          categoryIcon: Assets.translateIcon,
          items: [
            'How do you say “how are you” in korean?',
            'Write a poem about flower and love',
            'Write a rap song lyrics about',
          ],
        ),
      ],
    );
  }
}
