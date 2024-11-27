import 'package:flutter_cocktail/presentation/screen/home_screen.dart';
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(
  initialLocation: '/home', //ruta inicial cuando carge la aplicacion.

  routes:[
    GoRoute(
      path:'/home',
      builder:(context, state) => const HomeScreen(),
    ),
    /*
    GoRoute(
      path: '/about',
      builder:(context, state)=> const AboutScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder:(context, state)=> const SettingsScreen(),
    )*/
  ]
);

