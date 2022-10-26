import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/config/responsive.dart';
import 'package:shop_easy/shared/widgets/text_form_widget.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  List<Widget> firstRow(BuildContext context) {
    return [
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.18
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.25
                : MediaQuery.of(context).size.width,
        /* (Responsive.isDesktop(context))

            ? context.width * 0.18
            : context.width, */
        child: const TextFormWidget(
          hintText: 'Username',
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.18
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.25
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'Email',
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.18
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.25
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'Company Position',
        ),
      ),
    ];
  }

  List<Widget> secondRow(BuildContext context) {
    return [
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.273
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.4
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'First Name',
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.273
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.4
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'Last Name',
        ),
      ),
    ];
  }

  List<Widget> addressRow(BuildContext context) {
    return [
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.135
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.137
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'City',
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.135
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.2
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'District',
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.135
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.2
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'State',
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.135
            : Responsive.isTablet(context)
                ? MediaQuery.of(context).size.width * 0.2
                : MediaQuery.of(context).size.width,
        child: const TextFormWidget(
          hintText: 'CEP',
        ),
      ),
    ];
  }
}
