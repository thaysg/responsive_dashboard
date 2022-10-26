import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/responsive.dart';
import '../../config/size_config.dart';
import '../../shared/widgets/side_menu.dart';
import 'pdv_controller.dart';

class PdvPage extends GetView<PdvController> {
  static const routeName = '/pdv';

  const PdvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            const Expanded(
              flex: 10,
              child: Center(
                child: Text('PdvPage'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
