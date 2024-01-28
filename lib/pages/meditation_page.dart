import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tips_music/providers/meditation_provider.dart';

class MeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: FutureBuilder(
        future: Provider.of<MeditationProvider>(context, listen: false)
            .getMeditationList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Consumer<MeditationProvider>(
            builder: (context, value, child) => ListView.builder(
                // shrinkWrap: true,
                // physics:
                //     const NeverScrollableScrollPhysics(),
                itemCount: value.meditationList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(value.meditationList[index].title),
                  );
                }),
          );
        },
      ),
    );
  }
}
