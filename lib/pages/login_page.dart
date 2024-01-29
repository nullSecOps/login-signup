import 'package:flutter/material.dart';
import 'package:wechat/auth/auth_service.dart';
import 'package:wechat/components/my_button.dart';
import 'package:wechat/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, required this.ontap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) async {
    final authservice = AuthService();
    try {
      await authservice.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Error'),
        ),
      );
    }
  }

  final void Function()? ontap;

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
              'Welcome Back ! I\'ve Missed You',
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
              height: 25,
            )
            //login button
            ,
            MyButton(
              text: 'Login',
              ontap: () => login(context),
            ),
            const SizedBox(
              height: 10,
            ),
            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member ?',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: ontap,
                  child: Text(
                    ' Register Now!',
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
