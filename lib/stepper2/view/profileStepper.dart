import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../stepper/provider/stepper_provider.dart';

class ProfileStepper extends StatefulWidget {
  const ProfileStepper({Key? key}) : super(key: key);

  @override
  State<ProfileStepper> createState() => _ProfileStepperState();
}

class _ProfileStepperState extends State<ProfileStepper> {
  StepperProvider? stepperT, stepperF;

  @override
  Widget build(BuildContext context) {
    stepperF = Provider.of<StepperProvider>(context, listen: false);
    stepperT = Provider.of<StepperProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text(
          "Edit Your Profile",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperT!.stepperType,
                physics: const ScrollPhysics(),
                currentStep: stepperT!.current_step,
                onStepContinue: stepperT!.continued,
                onStepCancel: stepperT!.cancel,
                onStepTapped: (step) => stepperT!.tapped(step),
                steps: [
                  Step(
                    title: const Text("Profile Picture"),
                    content: const Icon(
                      Icons.person,
                      size: 50,
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Name"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Your Name*',
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Phone"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Mobile No',
                            icon: Icon(Icons.phone),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Email"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Your Email*',
                            icon: Icon(Icons.email),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 4
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("DOB"),
                    content: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              stepperT!.date = (await showDatePicker(
                                  context: context,
                                  initialDate: stepperT!.currentDate,
                                  firstDate: DateTime(1990),
                                  lastDate: DateTime(2040)))!;
                              stepperT!.ChangeDate(stepperT!.date);
                            },
                            child: const Text("Select Your birthdate")),
                        Text("${stepperT!.date}"),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 5
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Gender"),
                    content: Row(children: [
                      Radio(
                          value: "Male",
                          groupValue: stepperT!.gen,
                          onChanged: (value) {
                            stepperT!.handleGenderChange(value!);
                          }),
                      const Text("Male"),
                      Radio(
                          value: "Female",
                          groupValue: stepperT!.gen,
                          onChanged: (value) {
                            stepperT!.handleGenderChange(value!);
                          }),
                      const Text("Female"),
                    ]),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 6
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Current Location"),
                    content: Column(
                      children: [
                        FloatingActionButton.extended(
                          onPressed: () {},
                          label: const Text("Location"),
                          icon: const Icon(Icons.location_on_rounded),
                          backgroundColor: Colors.green.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Your Location',
                            icon: Icon(Icons.location_on_outlined),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 7
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Nationalities"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Your Nation',
                            hintText: 'india,aus,London',
                            icon: Icon(Icons.flag),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 8
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Religion"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Your Religion',
                            icon: Icon(Icons.temple_hindu),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 9
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Language(s)"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Known Languages',
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 10
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Biography"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Your Bio',
                            icon: Icon(Icons.person_search_outlined),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 11
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_circle),
        onPressed: () {
          stepperT!.SwitchStepsType();
        },
      ),
    ));
  }
}
