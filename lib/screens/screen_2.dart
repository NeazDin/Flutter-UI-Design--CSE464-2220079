import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Monthly Spending Report",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            // =====================
            // TOTAL EXPENSE CARD
            // =====================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Expenses (Last 30 days)",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "-\$1270.00",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Row(
                    children: const [
                      Icon(Icons.arrow_upward, size: 18, color: Colors.red),
                      SizedBox(width: 6),
                      Text(
                        "Up 12% from last month",
                        style: TextStyle(fontSize: 14, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // =======================================================
            // ALL CATEGORY ITEMS INSIDE ONE BOX
            // =======================================================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Spending Breakdown",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  buildCategoryRow(
                    "Food & Drink",
                    "\$450.00",
                    "35%",
                    Colors.redAccent,
                    0.35,
                  ),
                  const SizedBox(height: 15),

                  buildCategoryRow(
                    "Shopping",
                    "\$320.00",
                    "25%",
                    Colors.purple,
                    0.25,
                  ),
                  const SizedBox(height: 15),

                  buildCategoryRow(
                    "Housing",
                    "\$280.00",
                    "22%",
                    Colors.orange,
                    0.22,
                  ),
                  const SizedBox(height: 15),

                  buildCategoryRow(
                    "Transport",
                    "\$150.00",
                    "12%",
                    Colors.green,
                    0.12,
                  ),
                  const SizedBox(height: 15),

                  buildCategoryRow("Other", "\$70.00", "6%", Colors.grey, 0.06),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ==========================================
  // CATEGORY ROW (SAME AS BEFORE)
  // ==========================================
  Widget buildCategoryRow(
    String category,
    String amount,
    String percentage,
    Color barColor,
    double progress,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row Content
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              "$amount ($percentage)",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),

        const SizedBox(height: 8),

        // Progress bar
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            color: barColor,
            backgroundColor: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
