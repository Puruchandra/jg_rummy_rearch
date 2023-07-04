import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';

class Lobby2 extends StatelessWidget {
  final EventProcessor eventProcessor;
  const Lobby2 ({Key? key, required this.eventProcessor}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lobby2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Lobby2",
                style: TextStyle(fontSize: 42),
              ),
              ElevatedButton(
                onPressed: () {
                  eventProcessor.onEventReceived(Event.lobby2Completed);
                },
                child: const Text("Move back to Lobby 1"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
