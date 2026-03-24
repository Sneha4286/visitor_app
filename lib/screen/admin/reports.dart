import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});
  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("floatingbutton is clicked");
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text("Visitor Reports"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 120,
            width: 2000,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 4,
                right: 8,
                bottom: 4,
              ),
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 8),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(radius: 35, child: Icon(Icons.person)),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),

                              Text(
                                "Flat no",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Contact No",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Status",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
