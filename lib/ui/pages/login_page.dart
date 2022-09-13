import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/ui/widgets/back_arrow.dart';
import 'package:gtc_customer/ui/widgets/elevated_button.dart';
import 'package:gtc_customer/ui/widgets/page_header.dart';
import 'package:gtc_customer/ui/widgets/text_field_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    buttonColor: ColorsApp.buttonPrimary,
                    buttonTextColor: ColorsApp.textPrimary,
                  ),
                  SizedBox(
                    width: 24.r,
                  ),
                  CustomElevatedButton(
                    onPressed: () {},
                    buttonSize: Size(100.r, 27.r),
                    buttonRadius: BorderRadius.circular(14.r),
                    buttonText: ('Sign in'),
                    buttonColor: ColorsApp.buttonSecondary,
                    buttonTextColor: ColorsApp.textSecondary,
                  ),
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
                prefixIcon: Icons.lock,
                hintText: 'password',
              ),
              SizedBox(
                height: 11.r,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Forget your password ?',
                      children: [
                        TextSpan(
                          text: ' click here',
                          style: TextStyle(
                            color: ColorsApp.buttonPrimary,
                            fontSize: 14.r,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.r,
                  ),
                  const Text(
                    'Remember Me',
                  ),
                ],
              ),
              SizedBox(
                height: 33.r,
              ),
              CustomElevatedButton(
                onPressed: () {},
                buttonSize: Size(272.34.r, 42.r),
                buttonRadius: BorderRadius.circular(25.r),
                buttonText: ('Login'),
                buttonColor: ColorsApp.buttonPrimary,
                buttonTextColor: ColorsApp.textPrimary,
              ),
              SizedBox(
                height: 33.r,
              ),
              Text(
                'login by',
                style: TextStyle(
                  color: ColorsApp.textSecondary,
                  fontSize: 14.r,
                ),
              ),
              SizedBox(
                height: 22.r,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImagesApp.facebook,
                    width: 53.42.r,
                    height: 50.87.r,
                  ),
                  SizedBox(
                    width: 8.r,
                  ),
                  SvgPicture.asset(
                    ImagesApp.googlePlus,
                    width: 53.42.r,
                    height: 50.87.r,
                  ),
                  SizedBox(
                    width: 8.r,
                  ),
                  SvgPicture.asset(
                    ImagesApp.twitter,
                    width: 53.42.r,
                    height: 50.87.r,
                  ),
                  SizedBox(
                    width: 8.r,
                  ),
                  SvgPicture.asset(
                    ImagesApp.instagram,
                    width: 53.42.r,
                    height: 50.87.r,
                  ),
                ],
              ),
              SizedBox(
                height: 36.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
