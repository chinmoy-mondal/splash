import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(child: Text("Welcome",style: Theme.of(context).textTheme.headlineLarge)),
    );
  }

}