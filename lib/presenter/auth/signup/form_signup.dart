import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_styles.dart';
import '../../../routes/routes_imporst.dart';
import '../../../shared/widgets/button_default_widget.dart';
import '../../../shared/widgets/text_form_widget.dart';

class FormSignup extends StatelessWidget {
  const FormSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Cadastro',
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
          const TextFormWidget(
            prefixIcon: Icons.lock,
            hintText: 'Confirme sua senha',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          ButtonDefaultWidget(
            height: 60,
            onPressed: () {
              Get.offAndToNamed(HomePage.routeName);
            },
            text: 'Cadastrar',
            fontSize: 22,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Get.toNamed(LoginPage.routeName);
            },
            child: const Text(
              'Já possuo cadastro',
              style: primaryText,
            ),
          ),
        ],
      ),
    );
  }
}
