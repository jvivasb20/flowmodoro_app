part of '../screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TimerController timerController = Get.put(TimerController());

  @override
  void initState() {
    super.initState();
    timerController.stopWatchTimer.value.secondTime.listen((value) {
      debugPrint('rawTime $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Task Name",
                    style: Get.textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "3 of 5",
                    style: Get.textTheme.headlineLarge,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<int>(
                  stream: timerController.stopWatchTimer.value.rawTime,
                  initialData: 0,
                  builder: (context, snapshot) {
                    final value = snapshot.data as int;

                    final hours = StopWatchTimer.getDisplayTimeHours(value);
                    final minutes = StopWatchTimer.getDisplayTimeMinute(value);
                    final seconds = StopWatchTimer.getDisplayTimeSecond(value);

                    return Container(
                      width: double.infinity,
                      color: kColorPurpleDark,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                hours,
                                style: Get.textTheme.displayLarge,
                              ),
                              Text(
                                ":",
                                style: Get.textTheme.displayLarge,
                              ),
                              Text(
                                minutes,
                                style: Get.textTheme.displayLarge,
                              ),
                            ],
                          ),
                          Text(
                            seconds,
                            style: Get.textTheme.labelLarge?.copyWith(
                              color: kColorWhite.withOpacity(0.67),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          timerController.stopWatchTimer.value.onStartTimer();
                        },
                        icon: Icon(
                          Icons.play_circle_fill_outlined,
                          size: 48.sp,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    IconButton(
                        onPressed: () {
                          timerController.stopWatchTimer.value.onResetTimer();
                        },
                        icon: Icon(
                          Icons.replay_circle_filled,
                          size: 48.sp,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    IconButton(
                        onPressed: () {
                          timerController.stopWatchTimer.value.onStopTimer();
                        },
                        icon: Icon(
                          Icons.pause_circle_filled_outlined,
                          size: 48.sp,
                        )),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
