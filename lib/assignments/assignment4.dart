import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Task 4 Part 1: Basic Layout with Row and Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Item 1",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
                      "Item 2",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
                      "Item 3",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Icon Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.star, color: Colors.blue, size: 30),
                    Icon(Icons.favorite, color: Colors.blue, size: 30),
                    Icon(Icons.face, color: Colors.blue, size: 30),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Task 4 Part 2: Alignment and Spacing (Buttons)
            Column(
              children: [
                // Button Rows
                for (var i = 1; i <= 4; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var j = 1; j <= 3; j++)
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            child: Text(
                              "Button ${i * 3 - 3 + j}",
                              style: const TextStyle(color: Colors.white),
                            ),

                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
