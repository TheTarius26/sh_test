import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:table_calendar/table_calendar.dart';

class AppCalendar extends StatelessWidget {
  const AppCalendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: textStyleTitle.copyWith(
          fontSize: 18,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: textStyleBody.copyWith(
        fontSize: 12,
      )),
      calendarStyle: CalendarStyle(
        defaultTextStyle: textStyleBody,
        weekendTextStyle: textStyleBody.copyWith(
          color: Colors.red,
        ),
        todayDecoration: const BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
        ),
        todayTextStyle: textStyleBody.copyWith(
          color: Colors.white,
        ),
        disabledTextStyle: textStyleBody.copyWith(
          color: Colors.grey,
        ),
      ),
    );
  }
}
