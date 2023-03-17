import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:stepperdrawer/Screen/Stepper/Stepper_Provider.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  Home? HomeTrue, HomeFlse;

  @override
  Widget build(BuildContext context) {
    HomeTrue = Provider.of<Home>(context, listen: true);
    HomeFlse = Provider.of<Home>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            appBar: NewGradientAppBar(
              gradient: LinearGradient(colors: [
                Colors.lightBlueAccent,
                Colors.greenAccent,
              ]),
              title: Text(
                "Edit your Profile",
              ),
              leading: (Icon(Icons.arrow_back)),
            ),
            body: Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
                colorScheme: ColorScheme.light(primary: Colors.blue),
              ),
              child: Stepper(
                type: StepperType.vertical,
                onStepTapped: (index) {
                  HomeFlse!.i7(index);
                },
                steps: [
                  const Step(
                    isActive: true,
                    title: Text('Profile Picture'),
                    content: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("My Profile"),
                      subtitle: Text("Naimish"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Name'),
                    content: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("My Name"),
                      subtitle: Text("Naimish"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Phone'),
                    content: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Phone"),
                      subtitle: Text("9054348932"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Email'),
                    content: ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Email"),
                      subtitle: Text("naimish125@gmail.com"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('DOB'),
                    content: ListTile(
                      leading: Icon(Icons.party_mode_sharp),
                      title: Text("My DOB"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Gender'),
                    content: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Gender"),
                      subtitle: Text("Male"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Current Location'),
                    content: ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("My Location"),
                      subtitle: Text("Surat"),
                    ),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Nationalities'),
                    content: ListTile(
                      leading: Icon(Icons.flag),
                      title: Text("My Nation"),
                      subtitle: Text("India"),
                    ),
                  ),
                  const Step(
                      isActive: true,
                      title: Text('Religion'),
                      content: Center(
                        child: Text('Confirm'),
                      )),
                  const Step(
                    isActive: true,
                    title: Text('Language(s)'),
                    content: ListTile(
                      leading: Icon(Icons.language),
                      title: Text("My Language"),
                      subtitle: Text("English"),
                    ),
                  ),
                  const Step(
                      isActive: true,
                      title: Text('Biography'),
                      content: Center(
                        child: Text('Address'),
                      )),
                ],
                currentStep: HomeTrue!.i,
                onStepCancel: () {
                  HomeFlse!.Backstep();
                },
                onStepContinue: () {
                  HomeFlse!.Nextstep();
                },
              ),
            ),
            ),
        );
    }
}