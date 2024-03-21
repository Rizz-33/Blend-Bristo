import 'package:blend_bristo/components/button.dart';
import 'package:blend_bristo/components/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  RegisterPage({Key? key, required this.onTap});

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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('lib/images/LogoColored.png'),
                  width: 250,
                ),
                SizedBox(height: 20,),
                Text(
                  'Getting Started',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Create account to continue!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
        
                SizedBox(height: 25,),
                MyTextField(controller: emailController, hintText: 'Email', obscureText: false),
        
                SizedBox(height: 20,),
                MyTextField(controller: passwordController, hintText: 'Password', obscureText: true),
        
                SizedBox(height: 20,),
                MyTextField(controller: confirmpasswordController, hintText: 'Confirm Password', obscureText: true),
        
                SizedBox(height: 20,),
                MyButton(text: 'Register', onTap: () {  },),
            
                SizedBox(height: 20,),
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
        ),
      ),
    );
  }
}
