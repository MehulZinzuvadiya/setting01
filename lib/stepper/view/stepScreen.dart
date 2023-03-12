import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:setting01/stepper/provider/stepper_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  StepperProvider? stepperT, stepperF;

  @override
  Widget build(BuildContext context) {
    stepperF = Provider.of<StepperProvider>(context, listen: false);
    stepperT = Provider.of<StepperProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade800,
        title: Text(
          "Stepper App",
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
                physics: ScrollPhysics(),
                currentStep: stepperT!.current_step,
                onStepContinue: stepperT!.continued,
                onStepCancel: stepperT!.cancel,
                onStepTapped: (step) => stepperT!.tapped(step),
                steps: [
                  Step(
                    title: const Text("Sign Up"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Full Name*',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email id',
                            icon: Icon(Icons.email),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Password*',
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Confirm Password*',
                            icon: Icon(Icons.lock_outline),
                          ),
                        ),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text("Login"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'User Name*',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Password*',
                            icon: Icon(Icons.mail_lock),
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
                    title: const Text("Home"),
                    content: Column(
                      children: [
                        Text("Succesfully Login..."),
                      ],
                    ),
                    isActive: stepperT!.current_step >= 0,
                    state: stepperT!.current_step >= 2
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
        child: Icon(Icons.change_circle),
        onPressed: () {
          stepperT!.SwitchStepsType();
        },
      ),
    ));
  }
}
