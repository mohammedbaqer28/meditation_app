import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tips_music/providers/tips_provider.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.add,
                  color: Colors.deepPurple,
                ),
                label: Text(
                  ' Add Tips',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  GoRouter.of(context).push('/add_page');
                },
              ),
            ),
            FutureBuilder(
              future: Provider.of<TipsProvider>(context, listen: false)
                  .getTipsList(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return Consumer<TipsProvider>(
                  builder: (context, value, child) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: value.tipsList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(value.tipsList[index].text),
                          subtitle: Text(value.tipsList[index].author),
                        );
                      }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
