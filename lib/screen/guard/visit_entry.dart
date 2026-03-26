import 'package:flutter/material.dart';

class VisitEntry extends StatefulWidget {
  const VisitEntry({super.key});

  @override
  State<VisitEntry> createState() => _VisitEntryState();
}

class _VisitEntryState extends State<VisitEntry> {
  var selectedValue;
  TextEditingController dateTimeController = TextEditingController();
  @override
  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();

    // Format: yyyy-mm-dd HH:MM
    String formattedDateTime =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}  "
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ";

    dateTimeController.text = formattedDateTime;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Visit Entry"),
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
                    height: 170,
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
                                  "Vehicle Info",
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
                                  "Vehicle Type",
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 80),
                                Text(
                                  "Vehicle No",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              //new
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: SizedBox(
                                  height: 50,
                                  width: 135,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.directions_bike_rounded,
                                      ),
                                      prefixIconColor: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
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
                                    hint: Text("None"),
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        88,
                                        86,
                                        86,
                                      ),
                                      fontSize: 15,
                                    ),
                                    value: selectedValue,
                                    items: [
                                      DropdownMenuItem(
                                        value: "Car",
                                        child: Text("Car"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Cycle",
                                        child: Text("Cycle"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Bike",
                                        child: Text("Bike"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Truck",
                                        child: Text("Truck"),
                                      ),
                                    ],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                              SizedBox(width: 28),
                              //second
                              Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: SizedBox(
                                  height: 50,
                                  width: 135,
                                  child: TextFormField(
                                    //    keyboardType: TextInputType.number,
                                    cursorColor: const Color.fromARGB(
                                      255,
                                      88,
                                      86,
                                      86,
                                    ),
                                    decoration: InputDecoration(
                                      hint: Text("MH02BW2586"),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
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
                                      prefixIcon: Icon(Icons.numbers_rounded),
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(13),
                  child: SizedBox(
                    height: 170,
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
                                  "Flat Info",
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
                                Text("Wing", style: TextStyle(fontSize: 14)),
                                SizedBox(width: 130),
                                Text("Flat No", style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              //new
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: SizedBox(
                                  height: 50,
                                  width: 135,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.apartment),
                                      prefixIconColor: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
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
                                    hint: Text("Select"),
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        88,
                                        86,
                                        86,
                                      ),
                                      fontSize: 15,
                                    ),
                                    value: selectedValue,
                                    items: [
                                      DropdownMenuItem(
                                        value: "A",
                                        child: Text("A"),
                                      ),
                                      DropdownMenuItem(
                                        value: "B",
                                        child: Text("B"),
                                      ),
                                      DropdownMenuItem(
                                        value: "C",
                                        child: Text("C"),
                                      ),
                                      DropdownMenuItem(
                                        value: "D",
                                        child: Text("D"),
                                      ),
                                      DropdownMenuItem(
                                        value: "E",
                                        child: Text("E"),
                                      ),
                                      DropdownMenuItem(
                                        value: "F",
                                        child: Text("F"),
                                      ),
                                    ],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                              SizedBox(width: 28), //second
                              Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: SizedBox(
                                  height: 50,
                                  width: 135,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.home),
                                      prefixIconColor: const Color.fromARGB(
                                        255,
                                        74,
                                        91,
                                        212,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
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
                                    hint: Text("Select"),
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        88,
                                        86,
                                        86,
                                      ),
                                      fontSize: 15,
                                    ),
                                    value: selectedValue,
                                    items: [
                                      DropdownMenuItem(
                                        value: "101",
                                        child: Text("101"),
                                      ),
                                      DropdownMenuItem(
                                        value: "201",
                                        child: Text("201"),
                                      ),
                                      DropdownMenuItem(
                                        value: "301",
                                        child: Text("301"),
                                      ),
                                      DropdownMenuItem(
                                        value: "401",
                                        child: Text("401"),
                                      ),
                                      DropdownMenuItem(
                                        value: "501",
                                        child: Text("501"),
                                      ),
                                      DropdownMenuItem(
                                        value: "601",
                                        child: Text("601"),
                                      ),
                                    ],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //last
                Padding(
                  padding: const EdgeInsets.all(13),
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
                                  "Visit Info",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                              top: 5,
                              bottom: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 15),
                                Text("Accomplying Person"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13, top: 5),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 13, left: 13),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                cursorColor: const Color.fromARGB(
                                  255,
                                  88,
                                  86,
                                  86,
                                ),
                                decoration: InputDecoration(
                                  hint: Text("0"),
                                  prefixIcon: Icon(Icons.people),
                                  prefixIconColor: const Color.fromARGB(
                                    255,
                                    74,
                                    91,
                                    212,
                                  ),
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
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          Padding(
                            padding: const EdgeInsets.only(right: 13, left: 13),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                controller: dateTimeController,
                                cursorColor: const Color.fromARGB(
                                  255,
                                  88,
                                  86,
                                  86,
                                ),
                                decoration: InputDecoration(
                                  //   hint: Text("Entry Time 23:00  25/03/2026"),
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
                                  prefixIcon: Icon(Icons.access_alarms_sharp),
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
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 15),
                                Text("Purpose/Remark"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13, top: 5),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 13, left: 13),
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
                                  hint: Text(
                                    "ex.Family visit,Package delivery..",
                                    style: TextStyle(color: Colors.grey),
                                  ),
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
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
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
                  height: 40,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 74, 91, 212),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward),
                        SizedBox(width: 4),
                        Text("Start Visit"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
