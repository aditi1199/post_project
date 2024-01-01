import 'package:flutter/material.dart';
import 'package:post/core/app_export.dart';
import 'package:post/widgets/custom_outlined_button.dart';
import 'package:post/widgets/custom_text_form_field.dart';

class Iphone1415ProOneScreen extends StatelessWidget {
  Iphone1415ProOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 393.h,
            child: Column(
              children: [
                SizedBox(height: 21.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        right: 64.h,
                        bottom: 142.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgG853,
                            height: 131.v,
                            width: 247.h,
                          ),
                          SizedBox(height: 95.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 39.h),
                              child: Text(
                                " New Password",
                                style:
                                    CustomTextStyles.headlineLargeRobotoGray900,
                              ),
                            ),
                          ),
                          SizedBox(height: 71.v),
                          _buildNewPasswordSection(context),
                          SizedBox(height: 50.v),
                          _buildConfirmPasswordSection(context),
                          SizedBox(height: 86.v),
                          CustomOutlinedButton(
                            width: 181.h,
                            text: "Confirm",
                          ),
                        ],
                      ),
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

  /// Section Widget
  Widget _buildNewPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "New Password",
          style: CustomTextStyles.titleLargeRobotoGray900,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: newpasswordController,
          hintText: "New Password",
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
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password",
          style: CustomTextStyles.titleLargeRobotoGray900,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: confirmpasswordController,
          hintText: "New Password",
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
}
