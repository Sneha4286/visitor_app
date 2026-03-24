import 'package:flutter/material.dart';
import 'package:visitor_app/screen/splash_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController unmcntrl = TextEditingController();
  TextEditingController passcntrl = TextEditingController();
 
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/Mobile login-rafiki (1).png",
                    fit: BoxFit.cover,
                  ),
                  //  SizedBox(height: 70),
                  SizedBox(
                    height: 45,
                    width: 300,
                    child: TextFormField(
                      cursorColor: const Color.fromARGB(255, 88, 86, 86),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        // filled: true,
                        // fillColor: const Color.fromARGB(255, 242, 246, 248),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 78, 125, 228),
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 88, 86, 86),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 45,
                    width: 300,
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: const Color.fromARGB(255, 88, 86, 86),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 78, 125, 228),
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 88, 86, 86),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 78, 125, 228),
                            decoration: TextDecoration.underline,
                            decorationColor: const Color.fromARGB(
                              255,
                              78,
                              125,
                              228,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 35),
                    ],
                  ),
                  SizedBox(height: 90),
                  SizedBox(
                    height: 45,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(7),
                        ),
                        backgroundColor: const Color.fromARGB(
                          255,
                          78,
                          125,
                          228,
                        ),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text("LOGIN", style: TextStyle(fontSize: 16)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create an account?"),
                      SizedBox(width: 5),
                      Text(
                        "SignUp",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 78, 125, 228),
                          decoration: TextDecoration.underline,
                          decorationColor: const Color.fromARGB(
                            255,
                            78,
                            125,
                            228,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
