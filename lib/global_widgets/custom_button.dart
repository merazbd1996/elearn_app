import 'package:e_learning_app/global_widgets/custom_text_widget.dart';
import 'package:e_learning_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool? isSoft;
  final bool? isBorder;
  final void Function()? onTap;
  final Widget? prefixImage; // New parameter for prefix image

  const CustomButton({
    Key? key,
    required this.title,
    this.isSoft,
    this.isBorder,
    this.onTap,
    this.prefixImage, // Initialize prefix image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * .6,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: isBorder == true
              ? Border.all(
            color: AppColors.primary,
            width: 2.5,
          )
              : null,
          gradient: isSoft == true || isBorder == true
              ? null
              : const LinearGradient(
            colors: [
              AppColors.secondary,
              AppColors.primary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: isSoft == true ? AppColors.primary.withOpacity(.5) : null,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row( // Use a Row to place prefix image and title
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixImage != null) ...[
              Container(
                height: 30, // Set height of the prefix image
                width: 30, // Set width of the prefix image
                child: prefixImage!, // Display prefix image if provided
              ),
              SizedBox(width: 10), // Adjust spacing between prefix image and title
            ],
            Center(
              child: headingSmall(
                context: context,
                data: title,
                color: isSoft == true
                    ? Colors.white.withOpacity(.5)
                    : isBorder == true
                    ? AppColors.primary
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
