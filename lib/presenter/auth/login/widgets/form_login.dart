import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/routes/routes_imporst.dart';

import '../../../../core/app_styles.dart';
import '../../../../shared/widgets/button_default_widget.dart';
import '../../../../shared/widgets/text_form_widget.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Login',
              style: titleText,
            ),
            const SizedBox(height: 20),
            const TextFormWidget(
              prefixIcon: Icons.email,
              hintText: 'Digite seu email',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            const TextFormWidget(
              prefixIcon: Icons.lock,
              hintText: 'Digite sua senha',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            ButtonDefaultWidget(
              height: 60,
              onPressed: () {
                Get.offAndToNamed(HomePage.routeName);
              },
              text: 'Entrar',
              fontSize: 22,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.toNamed(SignupPage.routeName);
              },
              child: const Text(
                'Cadastrar-se',
                style: primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
