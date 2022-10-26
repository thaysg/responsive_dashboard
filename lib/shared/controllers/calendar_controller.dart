import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarController extends GetxController {
  static CalendarController get to => Get.find();

  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  void onDaySelected(DateTime selecteDay, DateTime focuseDay) {
    if (!isSameDay(selectedDay, selecteDay)) {
      selectedDay = selecteDay;
      focusedDay = focuseDay;
    }
    update();
  }
}
