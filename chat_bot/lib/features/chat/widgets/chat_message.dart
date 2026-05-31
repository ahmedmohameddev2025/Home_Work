import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/core/utils/app_text_styles.dart';
import 'package:chat_bot/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ChatMassage extends StatelessWidget {
  final String answer;
  const ChatMassage({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BotAvatar(),
        const SizedBox(width: 7),
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 24),
            decoration: const ShapeDecoration(
              color: AppColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            child: Text(
              answer,
              style: AppTextStyles.heading1.copyWith(
                fontSize: 13,
                color: AppColors.chatbotAnswerColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BotAvatar extends StatelessWidget {
  const BotAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 1.96,
            offset: Offset(0, 1.96),
          ),
        ],
      ),
      child: Image.asset(Assets.blueRobotIcon, width: 12, height: 18),
    );
  }
}
