import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shop_easy/config/responsive.dart';
import 'package:shop_easy/config/size_config.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/core/primary_text.dart';
import 'package:shop_easy/presenter/profile/profile_controller.dart';
import 'package:shop_easy/presenter/profile/widgets/user_information.dart';
import 'package:shop_easy/shared/widgets/button_default_widget.dart';
import 'package:shop_easy/shared/widgets/text_form_widget.dart';

class ProfileEditing extends StatelessWidget {
  const ProfileEditing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              if (!Responsive.isDesktop(context)) const UserInformation(),
              SizedBox(height: SizeConfig.blockSizeVertical! * 7),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -30,
                    child: SizedBox(
                      width: Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width * 0.6
                          : MediaQuery.of(context).size.width * 0.95,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: secondaryDark,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: PrimaryText(
                              text: 'Edit Profile',
                              size: 20,
                              color: lilyWhite,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: SizedBox(
                      width: Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width * 0.6
                          : Responsive.isTablet(context)
                              ? MediaQuery.of(context).size.width * 0.9
                              : MediaQuery.of(context).size.width * 0.95,

                      /* Responsive.isDesktop(context)
                              ? MediaQuery.of(context).size.width * 0.6
                              : MediaQuery.of(context).size.width * 0.95, */
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: primaryDark.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              if (Responsive.isDesktop(context))
                                GetBuilder<ProfileController>(
                                  init: ProfileController(),
                                  builder: (_controller) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: _controller.firstRow(context),
                                    );
                                  },
                                ),
                              if (Responsive.isTablet(context))
                                GetBuilder<ProfileController>(
                                  init: ProfileController(),
                                  builder: (_controller) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: _controller.firstRow(context),
                                    );
                                  },
                                ),
                              (Responsive.isDesktop(context))
                                  ? const SizedBox(height: 20)
                                  : const SizedBox(),
                              if (!Responsive.isDesktop(context))
                                Flexible(
                                  child: GetBuilder<ProfileController>(
                                    init: ProfileController(),
                                    builder: (_controller) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: _controller.firstRow(context),
                                      );
                                    },
                                  ),
                                ),
                              const SizedBox(height: 20),
                              if (Responsive.isDesktop(context))
                                GetBuilder<ProfileController>(
                                  builder: (_controller) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: _controller.secondRow(context),
                                    );
                                  },
                                ),
                              if (Responsive.isTablet(context))
                                GetBuilder<ProfileController>(
                                  builder: (_controller) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: _controller.secondRow(context),
                                    );
                                  },
                                ),
                              (Responsive.isDesktop(context))
                                  ? const SizedBox(height: 20)
                                  : const SizedBox(),
                              if (!Responsive.isDesktop(context))
                                Flexible(
                                  child: GetBuilder<ProfileController>(
                                    init: ProfileController(),
                                    builder: (_controller) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children:
                                            _controller.secondRow(context),
                                      );
                                    },
                                  ),
                                ),
                              const SizedBox(height: 20),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.0),
                                child: TextFormWidget(
                                  hintText: 'Address',
                                ),
                              ),
                              (Responsive.isDesktop(context))
                                  ? const SizedBox(height: 40)
                                  : const SizedBox(height: 20),
                              if (Responsive.isDesktop(context))
                                GetBuilder<ProfileController>(
                                  builder: (_controller) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: _controller.addressRow(context),
                                    );
                                  },
                                ),
                              if (Responsive.isTablet(context))
                                GetBuilder<ProfileController>(
                                  builder: (_controller) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: _controller.addressRow(context),
                                    );
                                  },
                                ),
                              (Responsive.isDesktop(context))
                                  ? const SizedBox(height: 20)
                                  : const SizedBox(),
                              if (!Responsive.isDesktop(context))
                                Flexible(
                                  child: GetBuilder<ProfileController>(
                                    init: ProfileController(),
                                    builder: (_controller) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children:
                                            _controller.addressRow(context),
                                      );
                                    },
                                  ),
                                ),
                              const SizedBox(height: 30),
                              Align(
                                alignment: Responsive.isDesktop(context)
                                    ? Alignment.bottomRight
                                    : Responsive.isTablet(context)
                                        ? Alignment.bottomRight
                                        : Alignment.bottomCenter,
                                child: ButtonDefaultWidget(
                                  width: Responsive.isDesktop(context)
                                      ? 200
                                      : Responsive.isTablet(context)
                                          ? 200
                                          : double.infinity,
                                  height: 60,
                                  onPressed: () {},
                                  text: 'Update Profile',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
