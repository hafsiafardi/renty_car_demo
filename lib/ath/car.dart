import 'package:flutter/material.dart';
import 'package:flutter_agence1/ath/Pay.dart';




class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F1FC), // Light blue background
      appBar: AppBar(
        backgroundColor: const Color(0xFF5078F2), // Darker blue app bar
        elevation: 0,
        title: const Text("Choose a Car"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.person, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Location and Filter Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Row(
                    children: const [
                      Icon(Icons.location_on, color: Colors.blueAccent),
                      SizedBox(width: 8),
                      Text("Tozeur, TUN"),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_list, color: Colors.blueAccent),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Results Text
            const Text(
              "03 Results",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Car List
            Expanded(
              child: ListView(
                children: [
                  _buildCarCard(
                    context,
                    carName: "Blue Kia Cerato",
                    price: "From \$50 / day",
                    deals: "18 Deals",
                    rating: "4.5",
                    carImage: 'assets/car1.jpg',
                  ),
                  const SizedBox(height: 20),
                  _buildCarCard(
                    context,
                    carName: "Blue Kia Cerato",
                    price: "From \$50 / day",
                    deals: "18 Deals",
                    rating: "4.5",
                    carImage: 'assets/4.jpg',
                  ),
                 const SizedBox(height: 20),
                 _buildCarCard(
                    context,
                    carName: "Blue Kia Cerato",
                    price: "From \$50 / day",
                    deals: "18 Deals",
                    rating: "4.5",
                    carImage: 'assets/6.jpg',
                  ),
                  const SizedBox(height: 20),
                
                  _buildCarCard(
                    context,
                    carName: "Blue Kia Cerato",
                    price: "From \$50 / day",
                    deals: "18 Deals",
                    rating: "4.5",
                    carImage: 'assets/3.png',
                  ),
                    const SizedBox(height: 20),
                  _buildCarCard(
                    context,
                    carName: "Red Tesla",
                    price: "From \$80 / day",
                    deals: "10 Deals",
                    rating: "4.3",
                    carImage: 'assets/car2.jpg',
                  ),
                ],
              ),
            ),
            ElevatedButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, 'login');
          },
          child: const Text('Log Out'),
        ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarCard(
    BuildContext context, {
    required String carName,
    required String price,
    required String deals,
    required String rating,
    required String carImage,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          // Car image with shadow
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                carImage,
                width: 100,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Car details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Car name
                Text(
                  carName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                // Price
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                // Deals and rating
                Row(
                  children: [
                    // Rating badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      deals,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Arrow button
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.blue),
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const PaymentPage())
                      );
            },
          ),
        ],
      ),
       
    );
  }
}