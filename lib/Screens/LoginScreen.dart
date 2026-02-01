// ignore_for_file: file_names
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/qr-code.png', height: 120),
                SizedBox(height: 16),
                Text(
                  'QR Payment',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4FAD55),
                  ),
                ),
                Text(
                  'Smart and Secure Payment',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                SizedBox(height: 32),
                _buildTextField(Icons.person, 'Username', userIdController),
                SizedBox(height: 16),
                _buildTextField(
                  Icons.lock,
                  'Password',
                  passwordController,
                  obscure: true,
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _login,
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Color(0xFF4FAD55),
                    //   minimumSize: Size.fromHeight(50),
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    //   elevation: 4,
                    // ),
                    child: Text("Login", style: TextStyle(fontSize: 16)),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/customer');
                    // pushReplacementNamed(context, '/customer');
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    IconData icon,
    String hint,
    TextEditingController controller, {
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        labelText: hint,
        filled: true,
        border: OutlineInputBorder(),
      ),
      /* decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),*/
    );
  }

  void _login() {
    final email = userIdController.text;
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    // Here you can handle API call and navigate based on _selectedRole
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Logging in as $email')));
  }
}
