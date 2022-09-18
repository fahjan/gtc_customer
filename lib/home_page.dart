import 'package:flutter/material.dart';
import 'package:gtc_customer/ui/widgets/logo_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast eat'),
      ),
      body: const Center(
        child: LogoWidget(),
      ),
    );
  }
}
