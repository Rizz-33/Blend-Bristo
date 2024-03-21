import 'package:blend_bristo/components/button.dart';
import 'package:blend_bristo/components/textfield.dart';
import 'package:blend_bristo/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;


  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

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
              "Let's get something",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Good to see you back!',
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
            MyButton(text: 'Login', onTap: login,),
        
            SizedBox(height: 20,),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
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