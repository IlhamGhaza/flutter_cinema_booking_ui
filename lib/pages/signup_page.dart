import 'package:flutter/material.dart';
import 'package:flutter_cinema_booking_ui/const.dart';
import 'package:flutter_cinema_booking_ui/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              const Icon(
                Icons.movie,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(height: 40),
              _buildTextField(_nameController, 'Name', Icons.person),
              const SizedBox(height: 20),
              _buildTextField(_emailController, 'Email', Icons.email,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 20),
              _buildTextField(_passwordController, 'Password', Icons.lock,
                  obscureText: true),
              const SizedBox(height: 20),
              _buildTextField(
                  _confirmPasswordController, 'Confirm Password', Icons.lock,
                  obscureText: true),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement sign up logic
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: buttonColor,
                  foregroundColor: appBackgroundColor,
                ),
                child: const Text('Sign Up', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: buttonColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String label, IconData icon,
      {bool obscureText = false,
      TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
        prefixIcon: Icon(icon, color: Colors.white),
      ),
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
