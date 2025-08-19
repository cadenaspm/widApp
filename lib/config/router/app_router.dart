

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', name: HomeScreen.name, builder: (context, state) =>  HomeScreen()),
    GoRoute(path: '/counter', name: CounterScreen.name, builder: (context, state) => const CounterScreen()),
    GoRoute(path: '/buttons', name: ButtonScreen.name, builder: (context, state) => const ButtonScreen()),
    GoRoute(path: '/cards', name: CardsScreen.name, builder: (context, state) => const CardsScreen()),
    GoRoute(path: '/progress', name: ProgressScreen.name, builder: (context, state) => const ProgressScreen()),
    GoRoute(path: '/snackbar', name: SnackbarScreen.name, builder: (context, state) => const SnackbarScreen()),
    GoRoute(path: '/animated', name: AnimatedScreen.name, builder: (context, state) => const AnimatedScreen()),
    GoRoute(path: '/ui_controls', name: UiControlsScreen.name, builder: (context, state) => const UiControlsScreen()),
    GoRoute(path: '/tutorial', name: AppTutorialScreen.name, builder: (context, state) => const AppTutorialScreen()),
    GoRoute(path: '/infinte', name: InfiniteScrollScreen.name, builder: (context, state) => const InfiniteScrollScreen()),
  ]
);