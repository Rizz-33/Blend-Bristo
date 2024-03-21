import 'package:blend_bristo/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image(
              image: AssetImage('lib/images/LogoColored.png'),
              width: 250,
            ),
            //message and app slogan
            Text(
              'Blend Bristo',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            SizedBox(height: 25,),
            //email textfield
            MyTextField(controller: emailController, hintText: 'Email', obscureText: false),

            SizedBox(height: 20,),
            //password textfield
            MyTextField(controller: passwordController, hintText: 'Password', obscureText: true),

            SizedBox(height: 20,),
            //sign in button
        
        
            //not a member? register now
          ],
        ),
      ),
    );
  }
}