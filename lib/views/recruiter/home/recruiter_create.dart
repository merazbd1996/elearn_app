// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_learning_app/global_widgets/custom_text_widget.dart';
import 'package:e_learning_app/utils/assets_manager.dart';
import 'package:e_learning_app/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../../global_widgets/custom_button.dart';
import '../../../global_widgets/custom_field.dart';
import '../../../global_widgets/custom_person.dart';
import '../../../utils/config.dart';

class RecruiterOrganizationScreen extends StatelessWidget {
  const RecruiterOrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60 * h / 812,
              ),
              Row(
                children: [
                  CustomPerson(),
                  SizedBox(
                    width: 15,
                  ),
                  headingLarge(
                      context: context, data: AppConfig.recruiterCreateName)
                ],
              ),
              SizedBox(
                height: 20 * h / 812,
              ),
              Container(
                height: 0.15 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.border,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.uploadBg,
                      backgroundImage: AssetImage(ImageManager.upload),
                    ),
                    SizedBox(
                      height: 5 * h / 812,
                    ),
                    headingSmall(
                        context: context,
                        data: AppConfig.LogoName,
                        color: AppColors.uploadText)
                  ],
                ),
              ),
              SizedBox(
                height: 15 * h / 812,
              ),
              Divider(
                color: AppColors.uploadText,
              ),
                SizedBox(
                height: 15 * h / 812,
              ),
              CustomField(
                title: 'Name of Company',
                hintText: 'Name of Company',
                isRequired: true,
              ),
                SizedBox(
                height: 5 * h / 812,
              ),
              CustomField(
                title: 'Name of Email',
                hintText: 'Name of Email',
                isRequired: true,
                suffixIcon: Icon(Icons.email,color: AppColors.iconColor,),
              ),
                SizedBox(
                height: 5 * h / 812,
              ),
              CustomField(
                title: 'Establishd date',
                hintText: 'Establishd date',
                isRequired: true,
                suffixIcon: Icon(Icons.calendar_month_rounded,color: AppColors.iconColor),
              ),
                SizedBox(
               height: 5 * h / 812,
              ),
              CustomField(
                title: 'Country',
                hintText: 'Country',
                isRequired: true,
                suffixIcon: Icon(Icons.arrow_drop_down,color: AppColors.iconColor,size: 40,),
              ),
                SizedBox(
                height: 5 * h / 812,
              ),
              CustomField(
                title: 'Company Address',
                hintText: 'Company Address',
                isRequired: true,
              ),
                SizedBox(
                height: 20 * h / 812,
              ),
               const CustomButton(
                title: 'Confirm',
              ),

               SizedBox(
                height: 50 * h / 812,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
