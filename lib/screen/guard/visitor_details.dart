import 'package:flutter/material.dart';

class VisitorDetailsPage extends StatelessWidget {
  const VisitorDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Visitor Details",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Colors.indigo, Colors.blue],
                ),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white24,
                    child: Text("R",
                        style:
                            TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  const Text("Rahul Sharma",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("Guest",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle,
                          size: 10, color: Colors.green),
                      SizedBox(width: 6),
                      Text("Currently Inside",
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            buildCard(
              title: "Visitor Profile",
              trailing: "permanent",
              icon: Icons.person,
              child: Column(
                children: const [
                  RowItem("Mobile", "9876543210"),
                  RowItem("Visitor Type", "Guest"),
                  RowItem("ID Proof Type", "Aadhar Card"),
                  RowItem("ID Number", "XXXX-XXXX-1234"),
                ],
              ),
            ),
            buildCard(
              title: "This Visit",
              trailing: "Visit Entry",
              icon: Icons.login,
              child: Column(
                children: const [
                  RowItem("Flat", "A-101"),
                  RowItem("Purpose", "Family visit"),
                  RowItem("Entry Time", "2026-03-25 13:12"),
                  RowItem("Duration", "1h 21m"),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.logout, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Mark Exit",
                      style:
                          TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  Widget buildCard({
    required String title,
    String? trailing,
    required Widget child,
    IconData? icon,
  }) {
    return Container(
      margin:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (icon != null)
                    Icon(icon,
                        color: Color.fromARGB(255, 74, 91, 212),
                        size: 20),
                  if (icon != null) const SizedBox(width: 6),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color:
                          Color.fromARGB(255, 74, 91, 212),
                    ),
                  ),
                ],
              ),
              if (trailing != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius:
                        BorderRadius.circular(20),
                  ),
                  child: Text(
                    trailing,
                    style: const TextStyle(
                      fontSize: 12,
                      color:
                          Color.fromARGB(255, 74, 91, 212),
                    ),
                  ),
                )
            ],
          ),
          const Divider(),
          child
        ],
      ),
    );
  }
}
class RowItem extends StatelessWidget {
  final String title;
  final String value;

  const RowItem(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Text(
              title,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}