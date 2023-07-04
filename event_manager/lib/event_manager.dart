library event_manager;

enum Event { splashComplete, registrationComplete, initApp, none, navigateToLobby2, lobby2Completed }

abstract class EventProcessor {
  void onEventReceived(Event event, {dynamic data});
}
