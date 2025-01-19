import 'package:flutter/material.dart';
import 'package:vesti/constants/app_texts.dart';

import '../../components/inputField.dart';
import '../../constants/app_colors.dart';
import '../../main.dart';
import '../homeScreen/homeScreen.dart';


class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppTexts.letsSignYouIn,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: AppColors.black1),
              ),
              SizedBox(height: 4),
              Text(
                AppTexts.welcomeBack,
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 40),
              // Reusable Email Input Field
              CustomTextField(
                labelText: AppTexts.email,
                hintText: AppTexts.email,
                floatingLabelFontSize: 20,
                floatingLabelText: AppTexts.emailFloatLabel,
              ),
              SizedBox(height: 24),
              CustomTextField(
                labelText: AppTexts.password,
                hintText: AppTexts.password,
                isPassword: true,
                floatingLabelFontSize: 20,
                // suffixIcon: Icon(Icons.visibility_off),
                controller: TextEditingController(),
                floatingLabelText: AppTexts.passwordFloatLabel,
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text(
                        AppTexts.rememberMe,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to Forgot Password screen
                    },
                    child: Text(
                      AppTexts.forgotPassword,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.black2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  AppTexts.signIn,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











