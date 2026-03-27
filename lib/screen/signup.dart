import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Controllers 
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController flatController = TextEditingController();

  // Role Dropdown
  String userRole = 'Society Member'; // Default role
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/Login-rafiki.png",
                    fit: BoxFit.cover,
                    height: 180,
                  ),
                  SizedBox(height: 20),
                  // Full Name
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Email
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Mobile Number
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Password
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Confirm Password
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      controller: confirmPassController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Flat / Block
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      controller: flatController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: "Flat / Block Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Role Dropdown: Admin / Guard / Society Member
                  SizedBox(
                    width: 300,
                    child: DropdownButtonFormField<String>(
                      value: userRole,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),
                        labelText: "Select Role",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      items: ['Admin', 'Guard', 'Society Member']
                          .map((role) => DropdownMenuItem(
                                value: role,
                                child: Text(role),
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          userRole = val!;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 15),

                  // Terms & Conditions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Checkbox(
                          value: acceptTerms,
                          onChanged: (val) {
                            setState(() {
                              acceptTerms = val!;
                            });
                          },
                        ),
                        Expanded(
                          child: Text(
                            "I accept the Terms & Conditions",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),

                  // Signup Button
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: acceptTerms
                          ? () {
                              // Placeholder: Signup logic
                              print("Full Name: ${nameController.text}");
                              print("Email: ${emailController.text}");
                              print("Mobile: ${mobileController.text}");
                              print("Flat: ${flatController.text}");
                              print("Role: $userRole");
                              print("Password: ${passwordController.text}");
                            }
                          : null, // Disabled until terms checked
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 78, 125, 228),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Login Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // back to login
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 78, 125, 228),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}