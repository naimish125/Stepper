import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/Stepper/Stepper_Provider.dart';
import 'Screen/Stepper/Stepper_view.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Home(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => StepperScreen(),
         // '/':(context) => drawer(),
        },
      ),
    ),
  );
}



