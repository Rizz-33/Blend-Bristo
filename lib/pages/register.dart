import 'package:blend_bristo/components/button.dart';
import 'package:blend_bristo/components/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;


  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            SizedBox(height: 20,),
            //message and app slogan
            Text(
              'Getting Started',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Create account to continue!',
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
            //confirm password textfield
            MyTextField(controller: confirmpasswordController, hintText: 'Confirm Password', obscureText: true),

            SizedBox(height: 20,),
            //sign in button
            MyButton(text: 'Register', onTap: () {  },),
        
            SizedBox(height: 20,),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}