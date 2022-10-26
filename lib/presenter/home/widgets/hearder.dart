import 'package:flutter/material.dart';
import 'package:shop_easy/config/responsive.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/presenter/home/widgets/custom_search_delegate.dart';
import 'package:shop_easy/shared/widgets/text_form_widget.dart';

import '../../../core/primary_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              PrimaryText(
                text: 'Dashboard',
                size: 30,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: 'Payments updates',
                size: 16,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 4,
            child: TextFormWidget(
              hintText: 'Search',
              onTap: () {
                // Get.toNamed(SearchScreen.routeName);
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              showSuffixIcon: true,
              suffixIcon: const Icon(
                Icons.search,
                color: secondaryDark,
              ),
            ) /* GestureDetector(
            onTap: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: secondaryDark,
                  )),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ), */
            ),
      ],
    );
  }
}

/*
 GestureDetector(
            onTap: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            child: const TextFormWidget(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              showSuffixIcon: true,
            ),
          ),
*/
