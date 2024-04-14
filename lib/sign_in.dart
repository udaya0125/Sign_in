import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool _isSignIn = true; 

  void _toggleAuthMode() {
    setState(() {
      _isSignIn = !_isSignIn; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _isSignIn ? 'Sign In' : 'Sign Up',
                    style:const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                if (!_isSignIn) ...[
                
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter your Name',
                      prefixIcon: Icon(Icons.mail),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your Phone Number',
                      prefixIcon: Icon(Icons.call),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    // hintText: 'Enter your password,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 6, 11, 156),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      _isSignIn ? 'Sign In' : 'Sign Up',
                      style:const TextStyle(color: Colors.white, fontSize: 18),
                      
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_isSignIn
                        ? 'Don\'t have an account?'
                        : 'Already have an account?'),
                    TextButton(
                      onPressed: _toggleAuthMode,
                      child: Text(
                        _isSignIn ? 'Sign Up' : 'Sign In',
                        style:const TextStyle(
                          color:  Color.fromARGB(255, 16, 8, 239),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
