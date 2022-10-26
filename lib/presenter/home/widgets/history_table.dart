import 'package:flutter/material.dart';
import 'package:shop_easy/shared/widgets/image_network_avatar.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../core/app_colors.dart';
import '../../../core/primary_text.dart';
import '../../../infra/data.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      physics: const BouncingScrollPhysics(),
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          border: TableBorder.all(
            color: secondaryDark,
            borderRadius: BorderRadius.circular(10),
          ),
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100),
            1: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ImageNetworkAvatar(
                    imagePath: transactionHistory[index]["avatar"]!,
                  ),
                  /* CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                        transactionHistory[index]["avatar"]!,
                        width: 40,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ), */
                ),
                /* CircleAvatarWidget(
                    radius: 20,
                    errorRadius: 20,
                    imageUrl: '',
                    imagePath: '',
                    child: ClipOval(
                      child: Image.network(
                        transactionHistory[index]["avatar"] ??
                            'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
                      ),
                    ),
                  ),
                ), */
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 4),
                  child: PrimaryText(
                    text: transactionHistory[index]["name"]!,
                    size: Responsive.isDesktop(context) ? 16 : 11,
                    fontWeight: FontWeight.w500,
                    color: secondaryDark,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: PrimaryText(
                    text: transactionHistory[index]["label"]!,
                    size: Responsive.isDesktop(context) ? 16 : 11,
                    fontWeight: FontWeight.w400,
                    color: secondaryDark,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: PrimaryText(
                    text: transactionHistory[index]["time"]!,
                    size: Responsive.isDesktop(context) ? 16 : 11,
                    fontWeight: FontWeight.w400,
                    color: secondaryDark,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: PrimaryText(
                    text: transactionHistory[index]["amount"]!,
                    size: Responsive.isDesktop(context) ? 16 : 11,
                    fontWeight: FontWeight.w400,
                    color: secondaryDark,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: PrimaryText(
                    text: transactionHistory[index]["status"]!,
                    size: Responsive.isDesktop(context) ? 16 : 11,
                    fontWeight: FontWeight.w400,
                    color: secondaryDark,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
