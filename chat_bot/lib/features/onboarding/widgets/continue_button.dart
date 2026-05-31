import 'package:chat_bot/features/chat/chat_screen.dart';
import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),
          Text(
            'Continue',
            style: AppTextStyles.heading1.copyWith(
              fontSize: 19,
              color: Colors.white,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
            icon: Icon(Icons.arrow_forward, color: Colors.white, size: 24),
          ),
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatScreen()),
        );
      },
    );
  }
}
