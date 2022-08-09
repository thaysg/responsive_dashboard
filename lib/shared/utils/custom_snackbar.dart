import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/models/defaults/provider_error_model.dart';

class CustomSnackbar {
  CustomSnackbar._();

  static void showSuccess(String title, String message) {
    Get.rawSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.green,
    );
  }

  static void showWarning(String title, String message) {
    Get.rawSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.orange,
    );
  }

  static void showError(String title, String message, {Widget? mainButton}) {
    Get.rawSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.red,
      mainButton: mainButton,
    );
  }

  static void showProviderError(ProviderErrorModel providerError) {
    MaterialButton? _mainButton() {
      if (providerError.details != null) {
        MaterialButton(
          onPressed: () {
            Get.dialog(
              AlertDialog(
                title: const Text('Detalhes do Erro'),
                content: Text(providerError.details ?? ''),
              ),
            );
          },
          child: const Text(
            'Ver mais',
            style: TextStyle(color: Colors.white),
          ),
        );
      }
      return null;
    }

    showError(
      providerError.title,
      providerError.content,
      mainButton: _mainButton(),
    );
  }
}
