import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Meditation App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(height: 200),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.tips_and_updates,
                    color: Colors.deepPurple,
                  ),
                  label: Text(
                    'Tips',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/tips_page');
                  },
                )),
            Container(height: 40),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.music_note,
                    color: Colors.deepPurple,
                  ),
                  label: Text(
                    'Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/music_page');
                  },
                )),
            Container(height: 40),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.model_training,
                    color: Colors.deepPurple,
                  ),
                  label: Text(
                    'Exercises',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/music_page');
                  },
                )),
            Container(height: 40),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.mediation,
                    color: Colors.deepPurple,
                  ),
                  label: Text(
                    'Meditation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/meditation_page');
                  },
                )),
          ],
        ),
      ),
    );
  }
}
