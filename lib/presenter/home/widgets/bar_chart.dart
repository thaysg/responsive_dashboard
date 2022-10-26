import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../config/responsive.dart';
import '../../../core/app_colors.dart';

class BarChartCopmponent extends StatelessWidget {
  const BarChartCopmponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          gridData:
              FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              axisNameSize: 30,
              drawBehindEverything: true,
            ),
            bottomTitles: AxisTitles(
              drawBehindEverything: true,
            ),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  toY: 10,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    fromY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  toY: 50,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  toY: 30,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                  toY: 80,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 7,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 8,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 9,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 10,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 11,
              barRods: [
                BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    toY: 90,
                    show: true,
                    color: secondaryDark,
                  ),
                ),
              ],
            ),
          ]),
      swapAnimationDuration: const Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}
