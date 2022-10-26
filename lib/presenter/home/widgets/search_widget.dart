import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/presenter/home/home_controller.dart';

class SearchWidget extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return TextField(
          autofocus: true,
          focusNode: focusNode,
          controller: controller.controller,
          decoration: InputDecoration(
            //icon: const Icon(Icons.search, color: secondaryDark),
            suffixIcon: text.isNotEmpty
                ? GestureDetector(
                    child: const Icon(Icons.close, color: secondaryDark),
                    onTap: () {
                      controller.controller.clear();
                      onChanged('');
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                  )
                : null,
            hintText: hintText,
            border: InputBorder.none,
          ),
          onChanged: onChanged,
        );
      },
    );
  }
}
