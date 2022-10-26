import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/shared/controllers/calendar_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245,
      child: GetBuilder<CalendarController>(
        init: CalendarController(),
        builder: (_controller) {
          return TableCalendar(
            rowHeight: 40,
            headerStyle: const HeaderStyle(
              titleTextStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              formatButtonTextStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              leftChevronPadding: EdgeInsets.all(2),
              rightChevronPadding: EdgeInsets.all(2),
              leftChevronMargin: EdgeInsets.all(2),
              rightChevronMargin: EdgeInsets.all(2),
            ),

            firstDay: _controller.focusedDay,
            lastDay: _controller.focusedDay,
            focusedDay: _controller.focusedDay,
            calendarFormat: _controller.calendarFormat,
            selectedDayPredicate: (day) {
              // Use `selectedDayPredicate` to determine which day is currently selected.
              // If this returns true, then `day` will be marked as selected.

              // Using `isSameDay` is recommended to disregard
              // the time-part of compared DateTime objects.
              return isSameDay(_controller.selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              _controller.onDaySelected(
                  _controller.selectedDay!, _controller.focusedDay);
              //_controller.selectedDay , _controller.focusedDay);
              /*  if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            } */
            },
            onFormatChanged: (format) {
              _controller.calendarFormat = format;
              /* if (_calendarFormat != format) {
              // Call `setState()` when updating calendar format
              setState(() {
                _calendarFormat = format;
              });
            } */
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _controller.focusedDay = focusedDay;
            },
            // Enable week numbers (disabled by default).
            //weekNumbersVisible: true,
          );
        },
      ),
    );
  }
}
