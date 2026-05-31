import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/core/utils/app_text_styles.dart';
import 'package:chat_bot/features/chat/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionGroup extends StatelessWidget {
  final String categoryName;
  final String categoryIcon;
  final List<String> items;

  const SuggestionGroup({
    super.key,
    required this.categoryName,
    required this.categoryIcon,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(categoryIcon, width: 24, height: 24),
        const SizedBox(height: 5),
        Text(
          categoryName,
          style: AppTextStyles.heading1.copyWith(
            fontSize: 15,
            color: AppColors.suggestionColor,
          ),
        ),
        const SizedBox(height: 18),
        ...List.generate(
          items.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SuggestionCard(title: items[index]),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
