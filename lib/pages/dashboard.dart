import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CalendarController _controller = new CalendarController();


  dynamic View = CalendarView.month;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(

        child: Column(
          children: [
            Placeholder(fallbackHeight: 200,),
            Row(children: [
              CircleAvatar(radius: 60,),Text('Username Here'),
            ],),

            Row(children: [
              Icon(Icons.access_alarm), Text('Dashboard'),
            ],),
            Row(children: [
              Icon(Icons.access_alarm), Text('Appointment List'),
            ],),
            Row(children: [
              Icon(Icons.access_alarm), Text('Patients List'),
            ],),
            Row(children: [
              Icon(Icons.access_alarm), Text('Calendar'),
            ],),
            Row(children: [
              Icon(Icons.access_alarm), Text('Settings'),
            ],),

          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(200),
        child: Column(
          children: [
            SfCalendar(
              dataSource: MeetingDataSource(_getDataSource()),
              view:View,

              monthViewSettings: MonthViewSettings(appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
              controller: _controller,
              onSelectionChanged: (CalendarSelectionDetails details){


              },



            ),
            ElevatedButton(onPressed: (){}, child: Text('PRESS ME!'))
          ],
        ),
      ),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
  DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(
      Meeting('Conference', startTime, endTime, const Color(0xFF0F8644), false));
  return meetings;
}


class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source){
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
