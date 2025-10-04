import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_sreen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginSreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginSreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
