import 'package:flutter/material.dart';
import 'package:wechat/components/my_button.dart';
import 'package:wechat/components/my_textfield.dart';

class Register extends StatelessWidget {
  Register({super.key, required this.ontap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final void Function()? ontap;

  void register() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 40,
            ),
            // welcome message
            Text(
              'Let\'s Create An Account For You ',
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 20,
            ),
            // username textfield
            MyTextField(
              hinttext: 'Email',
              obscuretext: false,
              textInput: emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            // password textfield
            MyTextField(
              hinttext: 'Password',
              obscuretext: true,
              textInput: passwordController,
            ),
            const SizedBox(
              height: 10,
            ),
            // confirm password
            MyTextField(
              hinttext: 'Confirm Password',
              obscuretext: true,
              textInput: confirmPasswordController,
            ),
            const SizedBox(
              height: 25,
            )
            //login button
            ,
            MyButton(
              text: 'Register',
              ontap: register,
            ),
            const SizedBox(
              height: 10,
            ),
            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have An Account ? ',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: ontap,
                  child: Text(
                    ' Login Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
