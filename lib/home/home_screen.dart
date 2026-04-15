import 'package:flutter/material.dart';
import '../widgets/destination_card.dart';
import '../data/dummy_destination.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2563EB),
      body: Column(
        children: [

          // ================= HEADER BIRU (CUMA PROFILE) =================
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 25),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF3B82F6), Color(0xFF2563EB)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/al.jpeg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Haiii',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Alwan Rafa',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ],
            ),
          ),

          // ================= CONTENT PUTIH =================
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 575,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                
                    const SizedBox(height: 24),
                
                    // ===== TITLE =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Find your happiness\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'with ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                              ),
                            ),
                            TextSpan(
                              text: 'Us',
                              style: TextStyle(
                                color: Color(0xFF2563EB),
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                
                    const SizedBox(height: 20),
                
                    // ===== SEARCH =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Find some place',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                
                    const SizedBox(height: 30),
                
                    // ===== POPULAR TITLE =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Popular Destination',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                              color: Color(0xFF2563EB),
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    const SizedBox(height: 15),
                
                    // ===== SLIDER =====
                    SizedBox(
                      height: 290,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: destinations.length,
                        itemBuilder: (context, index) {
                          return DestinationCard(
                            destination: destinations[index],
                          );
                        },
                      ),
                    ),
                
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
