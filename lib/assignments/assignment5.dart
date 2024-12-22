import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Task 5 Part 1: Basic ListView
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: _countries.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.shade100,
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Text(
                    _countries[index],
                    style: const TextStyle(
                        fontSize: 35, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Task 5 Part 2: List with Images
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: _books.length,
                itemBuilder: (context, index) => Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${_books[index]["image"]}",
                        width: 50,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      "${_books[index]["title"]}",
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Task 5 Part 3: Horizontal ListView
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _images.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(_images[index]),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.shade200,
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Data for Task 5 Part 1
  final List<String> _countries = [
    "India",
    "Egypt",
    "UK",
    "Canada",
    "Australia",
    "USA",
    "Germany",
    "France",
    "Italy",
    "Japan",
    "China",
    "Brazil",
  ];

  // Data for Task 5 Part 2
  final List<Map<String, String>> _books = [
    {"title": "Book 1", "image": "assets/images/imge1.jpg"},
    {"title": "Book 2", "image": "assets/images/imge2.jpg"},
    {"title": "Book 3", "image": "assets/images/imge3.jpg"},
    {"title": "Book 4", "image": "assets/images/imge1.jpg"},
    {"title": "Book 5", "image": "assets/images/imge3.jpg"},
    {"title": "Book 6", "image": "assets/images/imge2.jpg"},
    {"title": "Book 7", "image": "assets/images/imge1.jpg"},
    {"title": "Book 8", "image": "assets/images/imge3.jpg"},
    {"title": "Book 9", "image": "assets/images/imge2.jpg"},
    {"title": "Book 10", "image": "assets/images/imge1.jpg"},
    {"title": "Book 11", "image": "assets/images/imge3.jpg"},
    {"title": "Book 12", "image": "assets/images/imge2.jpg"},
    {"title": "Book 13", "image": "assets/images/imge1.jpg"},
    {"title": "Book 14", "image": "assets/images/imge3.jpg"},
    {"title": "Book 15", "image": "assets/images/imge2.jpg"},
  ];

  // Data for Task 5 Part 3
  final List<String> _images = [
    "assets/images/imge1.jpg",
    "assets/images/imge2.jpg",
    "assets/images/imge3.jpg",
    "assets/images/imge1.jpg",
    "assets/images/imge3.jpg",
    "assets/images/imge2.jpg",
    "assets/images/imge1.jpg",
    "assets/images/imge3.jpg",
    "assets/images/imge2.jpg",
    "assets/images/imge1.jpg",
    "assets/images/imge3.jpg",
    "assets/images/imge2.jpg",
  ];
}

// void main() {
//   runApp(const MaterialApp(home: Assignment5()));
// }
