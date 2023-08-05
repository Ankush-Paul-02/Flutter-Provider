import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: 'Login Screen'.text.white.semiBold.make().centered(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          20.heightBox,
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          30.heightBox,
          MaterialButton(
            color: Vx.orange500,
            onPressed: () {
              authProvider.login(
                  emailController.text, passwordController.text, context);
            },
            child: authProvider.isLoading
                ? const CircularProgressIndicator(
                    color: Vx.white,
                  )
                : 'Login'.text.white.make(),
          ),
        ],
      ).p20(),
    );
  }
}
