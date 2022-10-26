import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/config/size_config.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/presenter/credit_card/credit_card_controller.dart';
import 'package:shop_easy/presenter/credit_card/widgets/card_back_view.dart';
import 'package:shop_easy/presenter/credit_card/widgets/card_front_view.dart';
import 'package:shop_easy/shared/widgets/button_default_widget.dart';
import 'package:shop_easy/shared/widgets/text_form_widget.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
        GetBuilder<CreditCardController>(
          init: CreditCardController(),
          builder: (_controller) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(math.pi * _controller.flipAnimation!.value),
              origin: Offset(MediaQuery.of(context).size.width / 4, 0),
              //origin: Offset(MediaQuery.of(context).size.width * 2, -5),
              child: _controller.flipAnimation!.value < 0.3
                  ? CardFrontView(
                      cardNumber: '',
                      cardHolderName: _controller.cardHolderName,
                      cardExpiry: '10/2027',
                      formattedCardNumber: _controller.cardNumber,
                      formattedExpiryDate: _controller.cardExpiry,
                    )
                  : CardBackView(
                      cvvNumber: _controller.cvvNumber,
                      formattedCVVNumber: _controller.cvvNumber,
                    ),
            );
          },
        ),
        const SizedBox(height: 32),
        GetBuilder<CreditCardController>(
          builder: (_) {
            return TextFormWidget(
              controller: _.cardNumberController,
              maxLength: 16,
              hintText: 'Card Number',
              hintColor: lilyWhite,
              textStyleColor: lilyWhite,
            );
          },
        ),
        const SizedBox(height: 16),
        GetBuilder<CreditCardController>(
          builder: (_) {
            return TextFormWidget(
              controller: _.cardHolderNameController,
              hintText: 'Name',
              hintColor: lilyWhite,
              textStyleColor: lilyWhite,
            );
          },
        ),
        const SizedBox(height: 16),
        GetBuilder<CreditCardController>(
          init: CreditCardController(),
          builder: (_) {
            return TextFormWidget(
              controller: _.cardExpiryController,
              hintText: 'Expiry',
              hintColor: lilyWhite,
              textStyleColor: lilyWhite,
            );
          },
        ),
        const SizedBox(height: 16),
        GetBuilder<CreditCardController>(
          init: CreditCardController(),
          builder: (_) {
            return TextFormWidget(
              focusNode: _.cvvFocusNode,
              controller: _.cvvController,
              maxLength: 3,
              hintText: 'CVV',
              hintColor: lilyWhite,
              textStyleColor: lilyWhite,
            );
          },
        ),
        const SizedBox(height: 24),
        ButtonDefaultWidget(
          height: 60,
          onPressed: () {},
          text: 'Salvar',
          fontSize: 22,
        ),
      ],
    );
  }
}
