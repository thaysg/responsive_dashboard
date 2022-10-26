import 'package:flutter/material.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/core/primary_text.dart';

class CardFrontView extends StatelessWidget {
  final String cardNumber;
  final String cardHolderName;
  final String cardExpiry;
  final String formattedCardNumber;
  final String formattedExpiryDate;

  const CardFrontView({
    Key? key,
    required this.cardNumber,
    required this.cardHolderName,
    required this.cardExpiry,
    required this.formattedCardNumber,
    required this.formattedExpiryDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              secondaryDark.withAlpha(100),
              primaryDark.withAlpha(100),
            ],
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: lilyWhite,
              blurRadius: 3.0,
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.credit_card_rounded,
                  color: secondaryDark,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                formattedCardNumber,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w500,
                  color: secondaryDark,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PrimaryText(
                          text: 'Card Holder',
                          color: secondaryDark,
                          size: 14,
                        ),
                        Text(
                          cardHolderName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: secondaryDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PrimaryText(
                        text: 'Expiry',
                        color: secondaryDark,
                        size: 14,
                      ),
                      Text(
                        formattedExpiryDate,
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: secondaryDark,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
