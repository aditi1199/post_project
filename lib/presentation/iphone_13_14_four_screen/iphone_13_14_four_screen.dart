import 'package:flutter/material.dart';
import 'package:post/core/app_export.dart';
import 'package:post/widgets/custom_outlined_button.dart';
import 'package:post/widgets/custom_text_form_field.dart';

class Iphone1314FourScreen extends StatelessWidget {
  Iphone1314FourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController resendcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgG853,
                height: 131.v,
                width: 247.h,
                margin: EdgeInsets.only(left: 30.h),
              ),
              SizedBox(height: 61.v),
              Padding(
                padding: EdgeInsets.only(left: 80.h),
                child: Text(
                  "Verify OTP",
                  style: CustomTextStyles.headlineLargeRobotoGray900,
                ),
              ),
              SizedBox(height: 72.v),
              _buildSixColumnSection(context),
              SizedBox(height: 73.v),
              CustomOutlinedButton(
                width: 181.h,
                text: "Verify",
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterOtpSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter OTP",
          style: CustomTextStyles.titleLargeBlack900,
        ),
        SizedBox(height: 36.v),
        CustomTextFormField(
          controller: editTextController,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixColumnSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.h),
      child: Column(
        children: [
          _buildEnterOtpSection(context),
          SizedBox(height: 28.v),
          CustomTextFormField(
            width: 151.h,
            controller: resendcodeController,
            hintText: "Resend Code",
            textInputAction: TextInputAction.done,
            alignment: Alignment.centerRight,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 6.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
          ),
        ],
      ),
    );
  }
}
