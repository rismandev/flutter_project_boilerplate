import 'package:flutter/foundation.dart';

/// For this project, import this instead of [ChangeNotifier].
///
/// First, create state data class. Then add your state in <State>.
///
/// No need call [notifyListeners] because changing [state] automatically call [notifyListeners].
///
/// Only put class attribute in [State] class.
abstract class MyChangeNotifier<State> extends ChangeNotifier {
  MyChangeNotifier(this._state);

  State _state;

  State get state => _state;

  @protected
  set state(State newState) {
    _state = newState;
    notifyListeners();
  }

  @protected
  void changeStateWithoutNotify(State newState) {
    _state = newState;
  }
}
