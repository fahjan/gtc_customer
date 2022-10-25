import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'marchent_controller.dart';

class MarchentPage extends StatefulWidget {
  const MarchentPage({Key? key}) : super(key: key);

  @override
  State<MarchentPage> createState() => _MarchentPageState();
}

class _MarchentPageState extends State<MarchentPage> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/svg/arrow.svg'),
            Row(
              children: [
                Text('Delivary', style: TextStyle(color: Colors.black)),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SvgPicture.asset('assets/svg/back.svg'),
                ),
              ],
            ),
            SvgPicture.asset('assets/svg/search.svg'),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Alafia',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 16.0),
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          child: SvgPicture.asset('assets/svg/like.svg'),
                          elevation: 10,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      FloatingActionButton.small(
                        onPressed: () {},
                        child: SvgPicture.asset('assets/svg/star.svg'),
                        elevation: 10,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 16.0),
                    child: Align(
                      child: SvgPicture.asset('assets/svg/cart.svg'),
                      alignment: AlignmentDirectional.centerStart,
                    ),
                  ),
                  Stepper(
                    type: stepperType,
                    physics: ScrollPhysics(),
                    currentStep: _currentStep,
                    onStepTapped: (step) => tapped(step),
                    onStepContinue: continued,
                    onStepCancel: cancel,
                    steps: <Step>[
                      Step(
                        title: Text('Meals'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Fast food'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('drinks'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Soup'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 3
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Side'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 4
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Tagines'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 5
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Platters'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 6
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Cans'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 7
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Pan pizza'),
                        content: Column(
                          children: <Widget>[],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 8
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 8 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
