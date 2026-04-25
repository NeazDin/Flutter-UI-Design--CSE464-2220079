import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "User Profile",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),
            CircleAvatar(
              radius: 40,
              backgroundColor: const Color.fromARGB(255, 108, 12, 217),
              child: const Text(
                "NS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),
            buildBox(title: "Name", value: "Neazdin Shafiq"),

            const SizedBox(height: 15),

            buildBox(title: "Student ID", value: "2220079"),

            const SizedBox(height: 15),
            buildBox(title: "Email", value: "2220079@iub.edu.bd"),

            const SizedBox(height: 15),

            buildBox(
              title: "Story",
              value:
                  "\"Student ID: 2220079_Life Status: Compiling_& just trying to keep life running smoothly while balancing Last_semester projects, late_night study sessions, and saving up for future travels. If anyone finds my missing free time, please return it… preferably with a cup of coffee or Tea",
              isBio: true,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildBox({
    required String title,
    required String value,
    bool isBio = false,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: TextStyle(
              fontSize: isBio ? 14 : 16,
              height: isBio ? 1.4 : 1.2,
              fontWeight: isBio ? FontWeight.normal : FontWeight.w600,
              color: isBio ? Colors.black87 : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
