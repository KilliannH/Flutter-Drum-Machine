import 'dart:async';

class TimerService {
  static final timeout = const Duration(seconds: 3);
  static final ms = const Duration(milliseconds: 1);

  static startTimeout([int milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return new Timer(duration, handleTimeout(duration));
  }

  static handleTimeout(duration) {  // callback function
    print('launched in ' + duration.toString());
  }
}