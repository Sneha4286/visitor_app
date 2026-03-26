import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List visitors = [
    {
      "name": "Rahul Sharma",
      "mobile": "9876543210",
      "type": "Guest",
      "flat": "A-101",
      "time": "13:12",
      "duration": "1h 21m"
    },
    {
      "name": "Amit Verma",
      "mobile": "9123456780",
      "type": "Delivery",
      "flat": "B-202",
      "time": "13:57",
      "duration": "36m"
    },
    {
      "name": "Ramesh Gupta",
      "mobile": "9988776655",
      "type": "Maid",
      "flat": "C-303",
      "time": "12:32",
      "duration": "2h 1m"
    },
  ];

  List filteredVisitors = [];

  @override
  void initState() {
    super.initState();
    filteredVisitors = List.from(visitors);
  }

  void search(String value) {
    setState(() {
      filteredVisitors = visitors.where((v) {
        return v["name"].toLowerCase().contains(value.toLowerCase()) ||
            v["mobile"].toLowerCase().contains(value.toLowerCase()) ||
            v["flat"].toLowerCase().contains(value.toLowerCase());
      }).toList();
    });
  }

  Color getColor(String type) {
    switch (type) {
      case "Guest":
        return Colors.indigo;
      case "Delivery":
        return Colors.orange;
      case "Maid":
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5fb),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
            decoration: BoxDecoration(
              color: Color(0xff4A5BD4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    onChanged: search,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search name / mobile / flat...",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    chip("${filteredVisitors.length} Active", Icons.people),
                    SizedBox(width: 10),
                    chip("25/3/2026", Icons.calendar_today),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: filteredVisitors.length,
              itemBuilder: (context, index) {
                final v = filteredVisitors[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Dismissible(
                    key: ValueKey(v["name"] + index.toString()),

                    // Right swipe → Details
                    background: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4A5BD4),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.info_outline, color: Colors.white),
                          SizedBox(width: 8),
                          Text("Details", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),

                    secondaryBackground: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.edit, color: Colors.white),
                                Text("Edit", style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.delete, color: Colors.white),
                                Text("Delete", style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    confirmDismiss: (direction) async {
                      if (direction == DismissDirection.startToEnd) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Open Details")),
                        );
                        return false;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Edit / Delete Action")),
                        );
                        return false;
                      }
                    },

                    child: visitorCard(v),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Color(0xff4A5BD4),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person_add, color: Colors.white),
            SizedBox(width: 8),
            Text("Add Visitor", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget visitorCard(Map v) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: getColor(v["type"]).withOpacity(0.15),
            child: Text(
              v["name"][0],
              style: TextStyle(
                color: getColor(v["type"]),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(v["name"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.phone, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(v["mobile"] ?? "--", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.apartment, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("Flat ${v["flat"]}", style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 10),
                    Icon(Icons.access_time, size: 14, color: Colors.grey),
                    Text(" ${v["time"]}", style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 10),
                    Icon(Icons.timer, size: 14, color: Colors.grey),
                    Text(" ${v["duration"]}", style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: getColor(v["type"]).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(v["type"], style: TextStyle(color: getColor(v["type"]), fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }

  Widget chip(String text, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 16),
          SizedBox(width: 5),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}