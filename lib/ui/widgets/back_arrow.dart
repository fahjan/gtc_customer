import 'package:flutter/material.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    Key? key,
    
    required this.onPressed,
   
  }) : super(
          key: key,
        );

  
  final void Function() onPressed;
 

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_ios_sharp),
      color: ColorsApp.buttonPrimary,
    );
  }
}
