import 'package:financier/component/auth_field.dart';
import 'package:financier/component/auth_gradient_button.dart';
import 'package:financier/modules/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.1, horizontal: Get.width * 0.1),
        child: Column(
          children: [
            const Text("Ayo login cog"),
            SizedBox(height: Get.height * 0.1),
            const AuthField(
              labelText: "Email",
              hintText: "Masukkan email",
            ),
            SizedBox(height: Get.height * 0.02),
            const AuthField(
              labelText: "Password",
              hintText: "Masukkan password",
              obscureText: true,
            ),
            SizedBox(height: Get.height * 0.02),
            AuthGradientButton(
              label: "Login",
              onPressed: () {},
            ),
            SizedBox(height: Get.height * 0.02),
            Container(
              width: Get.width * 0.8,
              height: 2,
              color: Colors.white,
            ),
            SizedBox(height: Get.height * 0.02),
            GestureDetector(
              onTap: () {
                controller.signInWithGoogle();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: Get.width * 0.1,
                      height: Get.height * 0.05,
                      color: Colors.blue,
                      child: const Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                      )
                    ),
                    const SizedBox(width: 15,),
                    const Center(
                      child: Text("Login dengan Google"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            const Text("Belum punya akun? Daftar disini")
          ],
        ),
      )
    );
  }
}
