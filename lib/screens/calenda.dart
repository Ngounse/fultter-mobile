import 'package:flutter/material.dart';
import 'package:my_library/event/calenda.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calendar App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CalendarPage(),
    );
  }
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});
  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final ValueNotifier<List<Event>> _selectedEvents = ValueNotifier([]);
  final TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEventsListenable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar App with Events')),
      body: Column(
        children: [
          TableCalendar<Event>(
            // Use the generic type here
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: _onDaySelected,
            eventLoader: _getEventsForDay, // Use the event loader to show dots
            // ... (other table_calendar properties)
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEventsListenable,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListTile(
                        onTap: () => print(
                          '${value[index]} tapped!',
                        ), // Add edit functionality here
                        title: Text('${value[index]}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteEvent(
                            value[index],
                          ), // Add delete functionality
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddEventDialog,
        child: const Icon(Icons.add),
        tooltip: 'Add Event',
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Calendar App')),
  //     body: Column(
  //       children: [
  //         TableCalendar(
  //           firstDay: DateTime.utc(2010, 10, 16),
  //           lastDay: DateTime.utc(2030, 3, 14),
  //           focusedDay: _focusedDay,
  //           calendarFormat: _calendarFormat,
  //           selectedDayPredicate: (day) {
  //             // Use `selectedDayPredicate` to configure which day is selected.
  //             return isSameDay(_selectedDay, day);
  //           },
  //           onDaySelected: (selectedDay, focusedDay) {
  //             setState(() {
  //               _selectedDay = selectedDay;
  //               _focusedDay =
  //                   focusedDay; // update `_focusedDay` to make sure the calendar stays focused on the selected month
  //             });
  //             // You can add logic here to display events for the selected day
  //           },
  //           onFormatChanged: (format) {
  //             setState(() {
  //               _calendarFormat = format;
  //             });
  //           },
  //           onPageChanged: (focusedDay) {
  //             // Update `_focusedDay` when the user swipes or uses the header arrows
  //             _focusedDay = focusedDay;
  //           },
  //         ),
  //         // Add a section here to display events for the selected day
  //       ],
  //     ),
  //     // Add FloatingActionButton to add events (see step 4)
  //   );
  // }

  final Map<DateTime, List<Event>> _eventsMap = {
    DateTime.utc(2025, 12, 10): [
      Event('Sample Event A'),
      Event('Sample Event B'),
    ],
    DateTime.utc(2025, 12, 12): [Event('Sample Event C')],
  };

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEventsListenable = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEventsListenable.dispose();
    _eventController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
      // Update the ValueNotifier when the day changes
      _selectedEventsListenable.value = _getEventsForDay(selectedDay);
    }
  }

  // Helper method to get events for a given day
  List<Event> _getEventsForDay(DateTime day) {
    // Normalize the date to UTC to match keys in the map
    return _eventsMap[DateTime.utc(day.year, day.month, day.day)] ?? [];
  }

  void _showAddEventDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Add Event"),
        content: TextField(
          controller: _eventController,
          decoration: const InputDecoration(hintText: "Enter event title"),
        ),
        actions: [
          TextButton(
            child: const Text("Cancel"),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: const Text("Save"),
            onPressed: () {
              if (_eventController.text.isEmpty) return;

              final newEvent = Event(_eventController.text);
              final normalizedDate = DateTime.utc(
                _selectedDay!.year,
                _selectedDay!.month,
                _selectedDay!.day,
              );

              // Add the new event to the map
              setState(() {
                if (_eventsMap[normalizedDate] != null) {
                  _eventsMap[normalizedDate]!.add(newEvent);
                } else {
                  _eventsMap[normalizedDate] = [newEvent];
                }
              });

              // Update the event list for the currently selected day
              _selectedEventsListenable.value = _getEventsForDay(_selectedDay!);
              _eventController.clear();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _deleteEvent(Event eventToDelete) {
    // Logic to remove event from the map
    final normalizedDate = DateTime.utc(
      _selectedDay!.year,
      _selectedDay!.month,
      _selectedDay!.day,
    );
    setState(() {
      _eventsMap[normalizedDate]?.remove(eventToDelete);
    });
    // Update the UI list
    _selectedEventsListenable.value = _getEventsForDay(_selectedDay!);
  }
}
