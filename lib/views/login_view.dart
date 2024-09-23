import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Kembali"),),
        ElevatedButton(onPressed: (){
          Navigator.pushReplacementNamed(context, '/profile');
        }, child: Text("Profile"),),
      ],
    );
  }
}