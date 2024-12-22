import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 6"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Task 6 Part 1: Basic Icon Display with Cards
            SizedBox(
              height: 450,
              child: ListView.separated(
                itemCount: _itemList.length,
                itemBuilder: (context, index) => _item(
                  size: _itemList[index]["size"] as double,
                  icon: _itemList[index]["icon"] as IconData,
                  label: "${_itemList[index]["label"]}",
                  color: _itemList[index]["color"] as Color,
                ),
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
            const SizedBox(height: 20),

            // Task 6 Part 2: Floating Action Button
            const Task6Part2(),
          ],
        ),
      ),
    );
  }

  // Data for Task 6 Part 1
  final List<Map<String, dynamic>> _itemList = [
    {"icon": Icons.star, "label": "Star", "color": Colors.yellow, "size": 50.0},
    {
      "icon": Icons.favorite,
      "label": "Favorite",
      "color": Colors.red,
      "size": 30.0
    },
    {
      "icon": Icons.face,
      "label": "Face",
      "color": Colors.green,
      "size": 60.0,
    },
    {"icon": Icons.home, "label": "Home", "color": Colors.blue, "size": 20.0},
    {
      "icon": Icons.settings,
      "label": "Settings",
      "color": Colors.orange,
      "size": 50.0
    },
    {
      "icon": Icons.favorite,
      "label": "Favorite",
      "color": Colors.red,
      "size": 40.0
    },
    {
      "icon": Icons.face,
      "label": "Face",
      "color": Colors.green,
      "size": 35.0,
    },
    {"icon": Icons.home, "label": "Home", "color": Colors.blue, "size": 50.0},
    {
      "icon": Icons.settings,
      "label": "Settings",
      "color": Colors.orange,
      "size": 30.0
    },
  ];

  // Widget for rendering icons with labels inside a Card
  Widget _item({
    required IconData icon,
    required String label,
    required Color color,
    required double size,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: size, color: color),
        ),
        title: Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// Task 6 Part 2: Floating Action Button
class Task6Part2 extends StatelessWidget {
  const Task6Part2({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Floating Action Button"),
                content: const Text("You clicked on the floating action button"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("OK")),
                ],
              ),
            );
          },
          child: const Icon(Icons.add_comment_rounded),
          backgroundColor: Colors.blue,
          elevation: 10,
        ),
      ),
    );
  }
}
