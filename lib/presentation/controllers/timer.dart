part of 'controllers.dart';

class TimerController extends GetxController {
  final Rx<StopWatchMode> stopWatchMode = StopWatchMode.countUp.obs;

  final Rx<StopWatchTimer> stopWatchTimer = StopWatchTimer().obs;

  @override
  void dispose() async {
    super.dispose();
    await stopWatchTimer.value.dispose();
  }
}
