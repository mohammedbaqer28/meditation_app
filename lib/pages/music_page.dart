import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tips_music/providers/music_provider.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: FutureBuilder(
        future:
            Provider.of<MusicProvider>(context, listen: false).getMusicList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Consumer<MusicProvider>(
            builder: (context, value, child) => ListView.builder(
                // shrinkWrap: true,
                // physics:
                //     const NeverScrollableScrollPhysics(),
                itemCount: value.musicList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(value.musicList[index].title),
                  );
                }),
          );
        },
      ),
    );
  }
}
