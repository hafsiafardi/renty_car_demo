import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors, prefer_typing_uninitialized_variables

   // ignore: prefer_typing_uninitialized_variables
  return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: const Color.fromARGB(255, 9, 232, 240),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xFFEAEFF5),
        elevation: 0,
        // ignore: prefer_const_constructors
        leading: Icon(Icons.menu, color: Colors.black),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            // ignore: prefer_const_constructors
            child: Icon(Icons.person, color: Colors.black),
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barre de recherche
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              // ignore: prefer_const_constructors
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.search, color: Colors.grey),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 10),
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: TextField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20),
          // Liste des cartes de produits
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 247, 246, 246).withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                  child: Image.asset(
                     'assets/car1.png',
                      width: 100,
                      height: 100,
                      // ignore: prefer_const_constructors
                       
                 ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 20),
                  Image.asset(
          'assets/car2.png',
          width: 100,
          height: 100,
        ),

                  // ignore: prefer_const_constructors
                  SizedBox(height: 20),
                  // ignore: prefer_const_constructors
                  Text(
                    'Best Selling',
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 20),
                  Image.asset(
                   'assets/2.png',
                     width: 150,
                     height: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}