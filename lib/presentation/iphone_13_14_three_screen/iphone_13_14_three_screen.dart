import 'package:flutter/material.dart';
import 'package:post/core/app_export.dart';
import 'package:post/widgets/custom_elevated_button.dart';
import 'package:post/widgets/custom_text_form_field.dart';

class Iphone1314ThreeScreen extends StatelessWidget {
  Iphone1314ThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 38.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgG853,
                height: 131.v,
                width: 247.h,
                margin: EdgeInsets.only(left: 20.h),
              ),
              Spacer(
                flex: 27,
              ),
              _buildEnterRegisteredMobileNumber(context),
              SizedBox(height: 16.v),
              Text(
                "Back to Login",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 51.v),
              CustomElevatedButton(
                text: "Send OTP",
                margin: EdgeInsets.only(right: 6.h),
                buttonTextStyle: CustomTextStyles.titleLargeRobotoOnPrimary,
              ),
              Spacer(
                flex: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterRegisteredMobileNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Registered Mobile Number.",
            style: CustomTextStyles.bodyMediumInterBlack900,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: mobileNumberController,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
