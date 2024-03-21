import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.login,
              size: 100,
            ),

            SizedBox(height: 25,),
            //message and app slogan
            Text(
              'Blend Bristo',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
        
            //email textfield
        
        
            //password textfield
        
        
            //sign in button
        
        
            //not a member? register now
          ],
        ),
      ),
    );
  }
}