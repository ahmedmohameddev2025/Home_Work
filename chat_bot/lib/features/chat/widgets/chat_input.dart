import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/core/utils/app_text_styles.dart';
import 'package:chat_bot/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [BoxShadow(color: Color(0x0C000000), blurRadius: 1.96)],
      ),
      child: TextField(
        controller: controller,
        style: AppTextStyles.heading1.copyWith(
          fontSize: 13,
          color: AppColors.primaryColor,
        ),
        decoration: InputDecoration(
          hintText: 'Write your message',
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.microphoneIcon,
                    width: 22,
                    height: 22,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.sendIcon, width: 22, height: 22),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
