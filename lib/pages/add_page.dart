import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a Tip"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'text',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'author',
              ),
              maxLines: null,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Add Tip"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
