import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TOTAL BALANCE CARD
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF5A4FF3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Balance",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Icon(Icons.report, color: Colors.white, size: 18),
                      ],
                    ),

                    SizedBox(height: 8),

                    Text(
                      "\$8,945.32",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Savings: \$5,500",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "Last 30 days: +\$300 ->",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _smallBox(Icons.send, "Transfer"),
                  _smallBox(Icons.receipt_long, "Pay Bills"),
                  _smallBox(Icons.trending_up, "Invest"),
                ],
              ),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 117, 4, 231),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              _transactionItem(
                icon: Icons.movie,
                title: "Netflix Subscripti...",
                subtitle: "Entertainment . Today",
                amount: "-\$19.99",
                amountColor: Colors.red,
              ),

              _transactionItem(
                icon: Icons.coffee,
                title: "Coffee Shop",
                subtitle: "Food & Drink . Today",
                amount: "-\$4.50",
                amountColor: Colors.red,
              ),

              _transactionItem(
                icon: Icons.wallet,
                title: "Salary Deposit",
                subtitle: "Income . Yesterday",
                amount: "+\$3500.00",
                amountColor: Colors.green,
              ),

              _transactionItem(
                icon: Icons.shopping_cart,
                title: "Grocery Store",
                subtitle: "Shopping . Yesterday",
                amount: "-\$55.80",
                amountColor: Colors.red,
              ),

              _transactionItem(
                icon: Icons.shopping_cart,
                title: "Amazon Purchase",
                subtitle: "Shopping . 2 days ago",
                amount: "-\$120.45",
                amountColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _smallBox(IconData icon, String text) {
    return Container(
      width: 130,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: const Color.fromARGB(255, 91, 6, 230)),
          SizedBox(height: 8),
          Text(text, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  // TRANSACTION ITEM
  Widget _transactionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String amount,
    required Color amountColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.grey.shade200,
            child: Icon(icon, color: Colors.black87),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(height: 3),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          Text(
            amount,
            style: TextStyle(
              color: amountColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
