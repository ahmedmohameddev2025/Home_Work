import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_gradients.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class ChoiceItem extends StatelessWidget {
  final QuestionModel questionModel;
  final int choiceIndex;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceItem({
    super.key,
    required this.questionModel,
    required this.choiceIndex,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isMulti = questionModel.isMultiChoice;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: isSelected ? AppGradients.choice : null,
        color: isSelected ? null : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          if (isSelected)
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: 0.25),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            HapticFeedback.lightImpact();
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [

                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected
                          ? (isMulti
                              ? const Color(0xFF2B0063)
                              : AppColors.primaryColor)
                          : const Color(0xFF4A4A6A),
                      width: 2,
                    ),
                    color: isSelected
                        ? (isMulti
                            ? Colors.transparent
                            : AppColors.primaryColor)
                        : Colors.white,
                  ),
                  child: Center(
                    child: AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: isSelected ? 1 : 0,
                      child: Icon(
                        Icons.check,
                        color: isMulti
                            ? const Color(0xFF2B0063) 
                            : Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                Expanded(
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: AppTextStyles.medium16.copyWith(
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFF4A4A6A),
                    ),
                    child: Text(
                      questionModel.answers[choiceIndex],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
