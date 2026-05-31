import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/core/utils/app_text_styles.dart';
import 'package:chat_bot/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.blueRobotIcon, width: 24, height: 36),
        const SizedBox(width: 20),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ChatTitle(), SizedBox(height: 1), OnlineStatus()],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.volumeIcon, width: 24, height: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.exportIcon, width: 24, height: 24),
        ),
      ],
    );
  }
}

class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('ChatGPT', style: AppTextStyles.heading1.copyWith(fontSize: 20));
  }
}

class OnlineStatus extends StatelessWidget {
  const OnlineStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6.5,
          height: 6.5,
          decoration: const ShapeDecoration(
            color: AppColors.statusColor,
            shape: OvalBorder(),
          ),
        ),
        const SizedBox(width: 8.5),
        Text(
          'Online',
          style: AppTextStyles.heading2.copyWith(
            fontSize: 17,
            color: AppColors.statusColor,
          ),
        ),
      ],
    );
  }
}
