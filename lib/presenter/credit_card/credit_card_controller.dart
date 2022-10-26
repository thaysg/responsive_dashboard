import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditCardController extends GetxController
    with GetTickerProviderStateMixin {
  static CreditCardController get to => Get.find();

  double rotationFactor = 0;
  AnimationController? flipAnimationController;
  Animation<double>? flipAnimation;

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  FocusNode? cvvFocusNode;
  String cardNumber = '0000.0000.0000.0000';
  String cardHolderName = 'John Smith';
  String cardExpiry = '10/2027';
  String cvvNumber = '123';

  _cardState() {
    cardNumberController = TextEditingController();
    cardHolderNameController = TextEditingController();
    cardExpiryController = TextEditingController();
    cvvController = TextEditingController();
    cvvFocusNode = FocusNode();

    cardNumberController.addListener(onCardNumberChange);
    cardHolderNameController.addListener(() {
      cardHolderName = cardHolderNameController.text;
      update();
    });
    cardExpiryController.addListener(() {
      cardExpiry = cardExpiryController.text;
      update();
    });
    cvvController.addListener(() {
      cvvNumber = cvvController.text;
      update();
    });

    cvvFocusNode!.addListener(() {
      cvvFocusNode!.hasFocus
          ? flipAnimationController!.forward()
          : flipAnimationController!.reverse();
    });
  }

  void onCardNumberChange() {
    cardNumber = cardNumberController.text;
    update();
  }

  @override
  void onInit() {
    flipAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    flipAnimation =
        Tween<double>(begin: 0, end: 1).animate(flipAnimationController!)
          ..addListener(() {
            update();
          });
    _cardState();
    super.onInit();
  }
}
