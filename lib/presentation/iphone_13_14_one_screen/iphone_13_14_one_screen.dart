import 'package:flutter/material.dart';
import 'package:post/core/app_export.dart';
import 'package:post/widgets/custom_checkbox_button.dart';
import 'package:post/widgets/custom_elevated_button.dart';
import 'package:post/widgets/custom_text_form_field.dart';

class Iphone1314OneScreen extends StatelessWidget {
  Iphone1314OneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMeSection = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 41.h,
              top: 82.v,
              right: 41.h,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgG853,
                  height: 131.v,
                  width: 247.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 23.h),
                ),
                SizedBox(height: 38.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Log",
                          style: CustomTextStyles.headlineLargeRobotoGray90001,
                        ),
                        TextSpan(
                          text: "In",
                          style: CustomTextStyles.headlineLargeRobotoPrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 33.v),
                _buildEmailSection(context),
                SizedBox(height: 39.v),
                _buildPasswordSection(context),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildRememberMeSection(context),
                    Text(
                      "Forgot Password?",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(height: 45.v),
                CustomElevatedButton(
                  text: "LogIn",
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email/User ID",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "Enter email/user id",
          hintStyle: CustomTextStyles.bodyMediumGray500,
          textInputType: TextInputType.emailAddress,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Enter password",
          hintStyle: CustomTextStyles.bodyMediumGray500,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 10.v,
              width: 12.h,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 38.v,
          ),
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRememberMeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.v),
      child: CustomCheckboxButton(
        text: "Remember Me",
        value: rememberMeSection,
        onChange: (value) {
          rememberMeSection = value;
        },
      ),
    );
  }
}
