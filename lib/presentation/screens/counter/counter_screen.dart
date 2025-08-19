
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const name = 'counter';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int counterValue = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          isDarkMode
              ? IconButton(
                  onPressed: () {
                    ref.read(isDarkModeProvider.notifier).state = false;
                  },
                  icon: const Icon(
                    Icons.light_mode_outlined,
                    color: Colors.white,
                  ),
                )
              : IconButton(
                  onPressed: () {
                    ref.read(isDarkModeProvider.notifier).state = true;
                  },
                  icon: const Icon(
                    Icons.dark_mode_outlined,
                    color: Colors.white,
                  ),
                ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Counter Screen'),
            Text('$counterValue', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).state++ ;
          ref.read(counterProvider.notifier).update(
            (state) => state + 1
          );
        }, 
        child: const Icon(Icons.add),
      ),
    );
  }
}