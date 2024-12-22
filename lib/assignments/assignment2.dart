import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Task Part 1: Styled Welcome Text
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  "Welcome to Flutter!",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Task Part 2: Row with different styled containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContainer("Flutter Widgets", Colors.grey, 1),
                _buildContainer("Flutter is Awesome", Colors.blueGrey, 2),
              ],
            ),
            const SizedBox(height: 30),

            // Task Part 3: Gradient container with border
            Center(
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  border: Border.all(color: Colors.blue, width: 5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Event Details",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Task Part 4: Stacked containers with different colors
            Column(
              children: [
                _buildStackedContainer("Flutter is Top", Colors.blue),
                _buildStackedContainer("Flutter is Good", Colors.blueAccent),
                _buildStackedContainer("Flutter is Awesome", Colors.blueGrey),
              ],
            ),
            const SizedBox(height: 30),

            // Task Part 5: Image and Text Containers with Shadows
            Column(
              children: [
                _buildImageContainer("assets/images/imge1.jpg", 300),
                _buildTextContainer("Flutter", 300),
                _buildIconContainer(Icons.ac_unit_sharp, 100),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create a container with text and color
  Widget _buildContainer(String text, Color color, int index) {
    return Container(
      height: 100,
      width: 140,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Helper method to create a container with text and color for Part 4
  Widget _buildStackedContainer(String text, Color color) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  // Helper method to create an image container
  Widget _buildImageContainer(String imagePath, double height) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(child: Image.asset(imagePath)),
    );
  }

  // Helper method to create a text container
  Widget _buildTextContainer(String text, double height) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  // Helper method to create an icon container
  Widget _buildIconContainer(IconData icon, double size) {
    return Container(
      height: size,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Icon(icon, size: size, color: Colors.blue),
      ),
    );
  }
}
