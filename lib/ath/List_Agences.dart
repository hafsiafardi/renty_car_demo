// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListAgencesPage extends StatelessWidget {
  const ListAgencesPage({super.key});
@override
  Widget build(BuildContext context) {
return Scaffold(
      backgroundColor: const Color(0xFFE8F1FC), // Light blue background
      appBar: AppBar(
        backgroundColor: const Color(0xFF5078F2), // Darker blue app bar
        elevation: 0,
        title: const Text("List Agences"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      
);

  }
}