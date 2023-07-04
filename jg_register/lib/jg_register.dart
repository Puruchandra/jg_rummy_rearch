import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';

class JgRegistration extends StatelessWidget {
  final EventProcessor eventProcessor;
  const JgRegistration({Key? key, required this.eventProcessor}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber.shade100,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Registration Screen",
                style: TextStyle(fontSize: 42),
              ),
              ElevatedButton(
                  onPressed: () {
                    eventProcessor.onEventReceived(Event.registrationComplete, data: context);
                  }, child: const Text("Move to Dashboard"))
            ],
          ),
        ),
      ),
    );
  }
}
