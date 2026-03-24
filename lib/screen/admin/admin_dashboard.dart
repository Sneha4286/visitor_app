import 'package:flutter/material.dart';
import 'package:visitor_app/screen/admin/reports.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 60),
            CircleAvatar(radius: 70),
            SizedBox(height: 15),
            Text("Admin Name", style: TextStyle(fontSize: 25)),
            Text("Email", style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Divider(thickness: 2),
            ListTile(leading: Icon(Icons.person), title: Text("Add visitor")),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Reports();
                    },
                  ),
                );
              },
              leading: Icon(Icons.report),
              title: Text("Reports"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Admin Dashboard"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 150,
                child: Card(
                  elevation: 2,
                  child: Center(child: Text("Total visitor")),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 100,
                width: 150,
                child: Card(
                  elevation: 2,
                  child: Center(child: Text("Total delivery")),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 150,
                child: Card(
                  elevation: 2,
                  child: Center(child: Text("Total guest")),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 100,
                width: 150,
                child: Card(
                  elevation: 2,
                  child: Center(child: Text("Total Friend ")),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 150,
                child: Card(
                  elevation: 2,
                  child: Center(child: Text("Total maid")),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 100,
                width: 150,
                child: Card(
                  elevation: 2,
                  child: Center(child: Text("Total worker")),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
