import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainScreen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Function for showing SnackBar
  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('You clicked on the text'),
      ),
    );
  }

  // Function for navigating to MainScreen
  void _navigateToMainScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>   MainScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Using the function for SnackBar
            // Hidden for now
            // _buildGestureText(
            //   context,
            //   'Click here to show toast message',
            //       () => _showSnackBar(context),
            // ),
            // const SizedBox(height: 20),
            // Using the function for navigation to MainScreen
            // _buildGestureText(
            //   context,
            //   'Click here to go to MainScreen',
            //       () => _navigateToMainScreen(context),
            // ),
          ],
        ),
      ),
      // FloatingActionButton added here
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the /home route (this will use the named route defined below)
          Navigator.pushNamed(context, '/home');
        },
        tooltip: 'Go to MainScreen',
        child: const Icon(Icons.add), // Icon for the FloatingActionButton
      ),
    );
  }

  // Custom function for building GestureDetector with text
  Widget _buildGestureText(
      BuildContext context, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text),
    );
  }
}
