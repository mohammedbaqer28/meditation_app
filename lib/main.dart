import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tips_music/pages/add_page.dart';
import 'package:tips_music/pages/home_page.dart';
import 'package:tips_music/pages/meditation_page.dart';
import 'package:tips_music/pages/music_page.dart';
import 'package:tips_music/pages/signin_page.dart';
import 'package:tips_music/pages/signup_page.dart';
import 'package:tips_music/pages/tips_page.dart';
import 'package:tips_music/providers/meditation_provider.dart';
import 'package:tips_music/providers/music_provider.dart';
import 'package:tips_music/providers/tips_provider.dart';
import 'package:tips_music/providers/user_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => TipsProvider()),
    ChangeNotifierProvider(create: (context) => MusicProvider()),
    ChangeNotifierProvider(create: (context) => MeditationProvider()),
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SignupPage(),
      ),
      GoRoute(
        path: '/signin_page',
        builder: (context, state) => SigninPage(),
      ),
      GoRoute(
        path: '/home_page',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/tips_page',
        builder: (context, state) => TipsPage(),
      ),
      GoRoute(
        path: '/music_page',
        builder: (context, state) => MusicPage(),
      ),
      GoRoute(
        path: '/add_page',
        builder: (context, state) => AddPage(),
      ),
      GoRoute(
        path: '/meditation_page',
        builder: (context, state) => MeditationPage(),
      ),
    ],
  );
}
