import 'package:flutter/material.dart';
import 'package:visitor_app/screen/guard/guard_homescreen.dart';
import 'package:visitor_app/screen/guard/visit_entry.dart';

class NewVisitor extends StatefulWidget {
  const NewVisitor({super.key});

  @override
  State<NewVisitor> createState() => _NewVisitorState();
}

class _NewVisitorState extends State<NewVisitor> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Visitor"),
          backgroundColor: const Color.fromARGB(255, 74, 91, 212),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: SizedBox(
                    height: 350,
                    width: 400,
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                ),
                                child: Text(
                                  "Basic Info",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                              top: 13,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Visitor Name*",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                cursorColor: const Color.fromARGB(
                                  255,
                                  88,
                                  86,
                                  86,
                                ),

                                decoration: InputDecoration(
                                  hint: Text("Enter Name"),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                      width: 2,
                                    ),
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                  prefixIconColor: const Color.fromARGB(
                                    255,
                                    74,
                                    91,
                                    212,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                              top: 13,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Mobile Number",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                cursorColor: const Color.fromARGB(
                                  255,
                                  88,
                                  86,
                                  86,
                                ),
                                decoration: InputDecoration(
                                  hint: Text("Enter Mobile No"),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                      width: 2,
                                    ),
                                  ),
                                  prefixIcon: Icon(Icons.call),
                                  prefixIconColor: const Color.fromARGB(
                                    255,
                                    74,
                                    91,
                                    212,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                              top: 13,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Visitor Type",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.people),
                                prefixIconColor: const Color.fromARGB(
                                  255,
                                  74,
                                  91,
                                  212,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      74,
                                      91,
                                      212,
                                    ),

                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                              hint: Text("Select Visitor type"),
                              style: TextStyle(
                                color: const Color.fromARGB(255, 88, 86, 86),
                                fontSize: 15,
                              ),
                              value: selectedValue,
                              items: [
                                DropdownMenuItem(
                                  value: "Delivery Person",
                                  child: Text("Delivery Person"),
                                ),
                                DropdownMenuItem(
                                  value: "Friend",
                                  child: Text("Friend"),
                                ),
                                DropdownMenuItem(
                                  value: "Guest",
                                  child: Text("Guest"),
                                ),
                                DropdownMenuItem(
                                  value: "Worker",
                                  child: Text("Worker"),
                                ),
                                DropdownMenuItem(
                                  value: "Maid",
                                  child: Text("Maid"),
                                ),
                              ],
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //new section
                Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: SizedBox(
                    height: 320,
                    width: 400,
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                ),
                                child: Text(
                                  "Id Proof",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Divider(),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                              top: 13,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Proof Type",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.badge),
                                prefixIconColor: const Color.fromARGB(
                                  255,
                                  74,
                                  91,
                                  212,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      74,
                                      91,
                                      212,
                                    ),
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                              hint: Text("Select Proof type"),
                              style: TextStyle(
                                color: const Color.fromARGB(255, 88, 86, 86),
                                fontSize: 15,
                              ),
                              value: selectedValue,
                              items: [
                                DropdownMenuItem(
                                  value: "AadharCard",
                                  child: Text("Aadhar Card"),
                                ),
                                DropdownMenuItem(
                                  value: "PANCard",
                                  child: Text("PANCard"),
                                ),
                                DropdownMenuItem(
                                  value: "VoterID",
                                  child: Text("Voter ID"),
                                ),
                                DropdownMenuItem(
                                  value: "DrivingLicence",
                                  child: Text("Driving Licence"),
                                ),
                              ],
                              onChanged: (value) {},
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                              top: 13,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "ID Number",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                cursorColor: const Color.fromARGB(
                                  255,
                                  88,
                                  86,
                                  86,
                                ),
                                decoration: InputDecoration(
                                  hint: Text("Enter ID Number"),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                      width: 2,
                                    ),
                                  ),
                                  prefixIcon: Icon(Icons.numbers),
                                  prefixIconColor: const Color.fromARGB(
                                    255,
                                    74,
                                    91,
                                    212,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 298,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      74,
                                      91,
                                      212,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload_file,
                                      color: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Upload ID Photo",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          74,
                                          91,
                                          212,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 298,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 74, 91, 212),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VisitEntry()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_forward_rounded),
                          SizedBox(width: 5),
                          Text("Save & continue to visit", style: TextStyle()),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 298,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: const Color.fromARGB(255, 74, 91, 212),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.vertical_align_bottom_outlined,
                            color: const Color.fromARGB(255, 74, 91, 212),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Save visitor only",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 74, 91, 212),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
