import 'package:flutter/material.dart';
import 'package:task_rabbit/responsive/device_dimensions.dart';

class BottomSheetContent extends StatefulWidget {
  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: DeviceDimensions.screenHeight(context) * 0.25,
      width: DeviceDimensions.screenWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Connecting You To Tasker',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          // Stepper(
          //   type: StepperType.horizontal,
          //   currentStep: _currentStep,
          //   onStepTapped: (int step) {
          //     setState(() {
          //       _currentStep = step;
          //     });
          //   },
          //   onStepContinue: () {
          //     if (_currentStep < 2) {
          //       setState(() {
          //         _currentStep += 1;
          //       });
          //     }
          //   },
          //   onStepCancel: () {
          //     if (_currentStep > 0) {
          //       setState(() {
          //         _currentStep -= 1;
          //       });
          //     }
          //   },
          //   steps: <Step>[
          //     Step(
          //       title: Text('Step 1'),
          //       content: Text('Content for Step 1'),
          //       isActive: _currentStep >= 0,
          //       state:
          //           _currentStep >= 0 ? StepState.complete : StepState.disabled,
          //     ),
          //     Step(
          //       title: Text('Step 2'),
          //       content: Text('Content for Step 2'),
          //       isActive: _currentStep >= 1,
          //       state:
          //           _currentStep >= 1 ? StepState.complete : StepState.disabled,
          //     ),
          //     Step(
          //       title: Text('Step 3'),
          //       content: Text('Content for Step 3'),
          //       isActive: _currentStep >= 2,
          //       state:
          //           _currentStep >= 2 ? StepState.complete : StepState.disabled,
          //     ),
          //   ],
          // ),
          Image.asset('assets/images/person.png'),
          SizedBox(height: 16.0),
          Text(
            'Take 1 min',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
