import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CalendarController _controller = new CalendarController();

  dynamic View = CalendarView.month;
  late DateTime _selectedDay = DateTime.now();
  late DateTime _focusedDay;
  late CalendarFormat _calendarFormat = CalendarFormat.month;
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Placeholder(
              fallbackHeight: 200,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 60,
                ),
                Text('Username Here'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text('Dashboard'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text('Appointment List'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text('Patients List'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text('Calendar'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text('Settings'),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 900,
          height: 500,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Choose a time to book",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 30),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 650,
                      height: 400,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TableCalendar(
                            firstDay: DateTime.utc(2010, 10, 16),
                            lastDay: DateTime.utc(2030, 3, 14),
                            focusedDay: DateTime.now(),
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay, day);
                            },
                            calendarStyle: CalendarStyle(
                              outsideDaysVisible: false
                            ),
                            onDaySelected: (selectedDay, focusedDay) {
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay; // update `_focusedDay` here as well
                              });
                            },
                            calendarFormat: _calendarFormat,
                            onPageChanged: (focusedDay) {
                              _focusedDay = focusedDay;
                            },

                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 500,
                      child: Expanded(
                        child: Scrollbar(
                          isAlwaysShown: true,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _builIcon(0),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(1),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(2),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(3),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(4),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(5),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(6),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(7),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(8),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(9),
                                SizedBox(
                                  height: 10.0,
                                ),
                                _builIcon(10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _builIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });

      },
      child:Container(
        height: 40,
        width: 180,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: _selectedIndex == index ? Colors.black12 : null
        ),
        child: Center(
          child: Text(
              "02:00 pm"
          ),
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
  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
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
