import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:socmed/screens/login_screen.dart';

import '../../widgets/toast_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final contactnumberController = TextEditingController();
  final addressController = TextEditingController();

  SignupScreen({super.key});

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              TextWidget(
                text: 'Register here',
                fontSize: 24,
                fontFamily: 'Bold',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                label: 'Name',
                controller: nameController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                label: 'Contact Number',
                controller: contactnumberController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                label: 'Address',
                controller: addressController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                label: 'Email',
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                isObscure: true,
                label: 'Password',
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                label: 'Signup',
                onPressed: () {
                  box.write('email', emailController.text);
                  box.write('password', passwordController.text);
                  box.write('name', nameController.text);
                  box.write('address', addressController.text);
                  box.write('number', contactnumberController.text);

                  showToast('Account created succesfully!');
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
