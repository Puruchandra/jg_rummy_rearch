import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';

class JgSplash extends StatelessWidget {
  final EventProcessor eventProcessor;
  const JgSplash({Key? key, required this.eventProcessor}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Splash Screen",
                style: TextStyle(fontSize: 42),
              ),
              ElevatedButton(
                onPressed: () {
                  eventProcessor.onEventReceived(Event.splashComplete,
                      data: context);
                },
                child: const Text("Move to Registration"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
