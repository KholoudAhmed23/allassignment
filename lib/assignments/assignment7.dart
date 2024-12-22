import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  bool isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('ElevatedButton Pressed'),
                    content: Text('This is an ElevatedButton dialog.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('ElevatedButton'),
            ),
            SizedBox(height: 16),

            //! TextButton
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('TextButton Pressed'),
                    content: Text('This is a TextButton dialog.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('TextButton'),
            ),
            SizedBox(height: 16),

            //! OutlinedButton
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('OutlinedButton Pressed'),
                    content: Text('This is an OutlinedButton dialog.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('OutlinedButton'),
            ),
            SizedBox(height: 16),

            //! State Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFollowed = !isFollowed;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isFollowed ? Colors.red : Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text(isFollowed ? 'Unfollow' : 'Follow'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Floating Action Button"),
              content: Text("You clicked on the floating action button"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text("OK")),
              ],
            ),
          );
        },
        child: Icon(Icons.add_comment_rounded),
      ),
    );
  }
}
