import 'package:bmi_calculator/components/Age_selecter.dart';
import 'package:bmi_calculator/components/Height_selector.dart';
import 'package:bmi_calculator/components/PrimeryButton.dart';
import 'package:bmi_calculator/components/Reactbutton.dart';
import 'package:bmi_calculator/components/Theme_change_button.dart';
import 'package:bmi_calculator/components/Weight_Selector.dart';
import 'package:bmi_calculator/controllers/BMI_controller.dart';
import 'package:bmi_calculator/pages/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BMIConroller bmiController = Get.put(BMIConroller());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🌗 Theme Toggle
              const Align(
                alignment: Alignment.centerRight,
                child: ThemeChangeBtn(),
              ),

              const SizedBox(height: 10),

              // 👋 Greeting
              Text(
                "Welcome 😊",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontSize: 15),
              ),

              const SizedBox(height: 4),

              // 🧮 Title
              Text(
                "BMI Calculator",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 32,
                    ),
              ),

              const SizedBox(height: 30),

              // 🚻 Gender Selection
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                      onPress: () => bmiController.genderHandle("MALE"),
                      icon: Icons.male_rounded,
                      btnName: "MALE",
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: PrimaryButton(
                      onPress: () => bmiController.genderHandle("FEMALE"),
                      icon: Icons.female_rounded,
                      btnName: "FEMALE",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 📏 Height | ⚖ Weight | 🎂 Age
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: HeightSelector()),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          const Expanded(child: WeightSelector()),
                          const SizedBox(height: 20),
                          const Expanded(child: AgeSelector()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // 🚀 Calculate Button
              SizedBox(
                width: double.infinity,
                height: 62,
                child: MyRactButton(
                  onPress: () {
                    bmiController.CalculatBMI();
                    Get.to(() => const ResultPage(),
                        transition: Transition.fadeIn,
                        duration: const Duration(milliseconds: 300));
                  },
                  btnName: "LET'S GO",
                  icon: Icons.done_all_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
