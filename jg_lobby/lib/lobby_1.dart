import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';

class Lobby1 extends StatelessWidget {
  final EventProcessor eventProcessor;
  const Lobby1({Key? key, required this.eventProcessor}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Scaffold(
          backgroundColor: Colors.black12,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Lobby1",
                  style: TextStyle(fontSize: 42),
                ),
                ElevatedButton(
                  onPressed: () {
                    eventProcessor.onEventReceived(Event.navigateToLobby2);
                  },
                  child: const Text("Move to Lobby 2"),
                )
              ],
            ),
          ),
        ),
      );
  }
}
