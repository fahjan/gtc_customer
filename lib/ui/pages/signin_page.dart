import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/ui/widgets/back_arrow.dart';
import 'package:gtc_customer/ui/widgets/elevated_button.dart';
import 'package:gtc_customer/ui/widgets/page_header.dart';
import 'package:gtc_customer/ui/widgets/text_field_container.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackArrow(
          onPressed: () {},
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PageHeader(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    onPressed: () {},
                    buttonSize: Size(100.r, 27.r),
                    buttonRadius: BorderRadius.circular(14.r),
                    buttonText: ('Login'),
                    buttonColor: ColorsApp.buttonSecondary,
                    buttonTextColor: ColorsApp.textSecondary,
                  ),
                  SizedBox(
                    width: 24.r,
                  ),
                  CustomElevatedButton(
                    onPressed: () {},
                    buttonSize: Size(100.r, 27.r),
                    buttonRadius: BorderRadius.circular(14.r),
                    buttonText: ('Sign in'),
                    buttonColor: ColorsApp.buttonPrimary,
                    buttonTextColor: ColorsApp.textPrimary,
                  )
                ],
              ),
              SizedBox(
                height: 22.r,
              ),
              const TextFieldContainer(
                prefixIcon: Icons.person,
                hintText: 'user name',
              ),
              SizedBox(
                height: 10.r,
              ),
              const TextFieldContainer(
                prefixIcon: Icons.phone,
                hintText: 'mobile',
              ),
              SizedBox(
                height: 10.r,
              ),
              const TextFieldContainer(
                prefixIcon: Icons.mail,
                hintText: 'email',
              ),
              SizedBox(
                height: 10.r,
              ),
              const TextFieldContainer(
                prefixIcon: Icons.lock,
                hintText: 'password',
              ),
              SizedBox(
                height: 10.r,
              ),
              const TextFieldContainer(
                prefixIcon: Icons.lock,
                hintText: 'return password',
              ),
              SizedBox(
                height: 30.r,
              ),
              CustomElevatedButton(
                onPressed: () {},
                buttonSize: Size(272.34.r, 42.r),
                buttonRadius: BorderRadius.circular(25.r),
                buttonText: ('next'),
                buttonColor: ColorsApp.buttonPrimary,
                buttonTextColor: ColorsApp.textPrimary,
              ),
              SizedBox(
                height: 60.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

