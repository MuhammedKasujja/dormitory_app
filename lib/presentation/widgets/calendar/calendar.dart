import 'package:flutter/material.dart';

import 'calendar_bloc.dart';
import 'calendar_model.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final int _day = DateTime.now().day;
  final int _month = DateTime.now().month;
  final int _year = DateTime.now().year;
  final int _weekDay = DateTime.now().weekday;

  final List _monthSet1 = [1, 3, 5, 7, 8, 10, 12];
  final List _monthSet2 = [4, 6, 9, 11];

  final CalendarBloc _calendarBloc = CalendarBloc();

  final PageController _controller =
      PageController(initialPage: 0, keepPage: true);

  Widget _availableDates(int index, int month, int year) {
    return StreamBuilder<List<Calendar>>(
      initialData: _calendarBloc.calendarList,
      stream: _calendarBloc.calendarListStream,
      builder: (BuildContext context, AsyncSnapshot<List<Calendar>> snapshot) {
        if (snapshot.hasData) return const SizedBox.shrink();
        return InkWell(
          borderRadius: BorderRadius.circular(30.0),
          onTap: () {
            if (_calendarBloc.flag == true) {
              if (year < _calendarBloc.calendarList[1].year) {
                _calendarBloc.calendarStartDate
                    .add(Calendar(index, month, year, _weekDay));
                _calendarBloc.calendarEndDate.add(Calendar(0, 0, 0, 0));
                _calendarBloc.flag = !_calendarBloc.flag;
              } else if (year == _calendarBloc.calendarList[1].year) {
                if (month < _calendarBloc.calendarList[1].month) {
                  _calendarBloc.calendarStartDate
                      .add(Calendar(index, month, year, _weekDay));
                  _calendarBloc.calendarEndDate.add(Calendar(0, 0, 0, 0));
                  _calendarBloc.flag = !_calendarBloc.flag;
                } else if (month == _calendarBloc.calendarList[1].month) {
                  if (index <= _calendarBloc.calendarList[1].day) {
                    _calendarBloc.calendarStartDate
                        .add(Calendar(index, month, year, _weekDay));
                    _calendarBloc.calendarEndDate.add(Calendar(0, 0, 0, 0));
                    _calendarBloc.flag = !_calendarBloc.flag;
                  } else {
                    _calendarBloc.calendarStartDate
                        .add(Calendar(index, month, year, _weekDay));
                    _calendarBloc.calendarEndDate.add(Calendar(0, 0, 0, 0));
                    _calendarBloc.flag = !_calendarBloc.flag;
                  }
                } else {
                  _calendarBloc.calendarStartDate
                      .add(Calendar(index, month, year, _weekDay));
                  _calendarBloc.calendarEndDate.add(Calendar(0, 0, 0, 0));
                  _calendarBloc.flag = !_calendarBloc.flag;
                }
              } else {
                _calendarBloc.calendarStartDate
                    .add(Calendar(index, month, year, _weekDay));
                _calendarBloc.calendarEndDate.add(Calendar(0, 0, 0, 0));
                _calendarBloc.flag = !_calendarBloc.flag;
              }
            } else {
              if (year > _calendarBloc.calendarList[0].year) {
                _calendarBloc.calendarEndDate
                    .add(Calendar(index, month, year, _weekDay));
                _calendarBloc.flag = !_calendarBloc.flag;
              } else if (year == _calendarBloc.calendarList[0].year) {
                if (month > _calendarBloc.calendarList[0].month) {
                  _calendarBloc.calendarEndDate
                      .add(Calendar(index, month, year, _weekDay));
                  _calendarBloc.flag = !_calendarBloc.flag;
                } else if (month == _calendarBloc.calendarList[0].month) {
                  if (index > _calendarBloc.calendarList[0].day) {
                    _calendarBloc.calendarEndDate
                        .add(Calendar(index, month, year, _weekDay));
                    _calendarBloc.flag = !_calendarBloc.flag;
                  }
                }
              }
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  width: 3.0,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                gradient: (index == snapshot.data![0].day &&
                            month == snapshot.data![0].month &&
                            year == snapshot.data![0].year) ||
                        (index == snapshot.data![1].day &&
                            month == snapshot.data![1].month &&
                            year == snapshot.data![1].year)
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).secondaryHeaderColor
                          ])
                    : const LinearGradient(
                        colors: [Colors.white, Colors.white],
                      ),
              ),
              child: Center(
                child: Text('$index'),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _unavailableDates(int index) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 3.0,
            color: Theme.of(context).secondaryHeaderColor,
          ),
          color: Colors.blueGrey[200],
        ),
        child: Center(
          child: Text('$index'),
        ),
      ),
    );
  }

  Widget _date(int index, int day, int month, int year) {
    int firstDay = _weekDay - (day % 7 - 1);
    if (month > _month % 12) {
      firstDay = DateTime.parse('$year-${month.toString().padLeft(2, '0')}-01')
          .weekday;
    }
    index -= firstDay - 1;

    if (month != 2) {
      for (int i in _monthSet1) {
        if (month == i) {
          if (index >= day && index <= 31) {
            return _availableDates(index, month, year);
          } else if (index > 0 && index < day) {
            return _unavailableDates(index);
          } else {
            return const Text('');
          }
        }
      }

      for (int i in _monthSet2) {
        if (month == i) {
          if (index >= day && index <= 30) {
            return _availableDates(index, month, year);
          } else if (index > 0 && index < day) {
            return _unavailableDates(index);
          } else {
            return const Text('');
          }
        }
      }
    }

    if (month == 2) {
      if (year % 4 != 0) {
        if (index >= day && index <= 28) {
          return _availableDates(index, month, year);
        } else if (index > 0 && index < day) {
          return _unavailableDates(index);
        } else {
          return const Text('');
        }
      } else {
        if (index >= day && index <= 29) {
          return _availableDates(index, month, year);
        } else if (index > 0 && index < day) {
          return _unavailableDates(index);
        } else {
          return const Text('');
        }
      }
    }
    return const SizedBox.shrink();
  }

  Widget _calendar(int day, int month, int year) {
    if (month >= _month) {
      year = _year;
    } else {
      year = _year + 1;
    }
    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 8,
          child: Center(
            child: Text(
              _calendarBloc.monthHeadings[month],
              style: const TextStyle(fontSize: 70.0),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
                width: MediaQuery.of(context).size.width / 7.5,
                height: MediaQuery.of(context).size.height / 15,
                child: const Center(
                    child: Text(
                  'S',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 7.5,
                height: MediaQuery.of(context).size.height / 15,
                child: const Center(
                    child: Text(
                  'M',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 7.5,
                height: MediaQuery.of(context).size.height / 15,
                child: const Center(
                    child: Text(
                  'T',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 7.5,
                height: MediaQuery.of(context).size.height / 15,
                child: const Center(
                    child: Text(
                  'W',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 7.5,
                height: MediaQuery.of(context).size.height / 15,
                child: const Center(
                    child: Text(
                  'T',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 7.5,
              height: MediaQuery.of(context).size.height / 15,
              child: const Center(
                child: Text(
                  'F',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 7.5,
              height: MediaQuery.of(context).size.height / 15,
              child: const Center(
                child: Text(
                  'S',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Flexible(
          child: GridView.count(
            primary: false,
            crossAxisCount: 7,
            children: List.generate(42, (index) {
              return _date(index, day, month, year);
            }),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Dates'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          StreamBuilder<List<Calendar>>(
            initialData: _calendarBloc.calendarList,
            stream: _calendarBloc.calendarListStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 10.0, 0.0),
                  child: Text(
                    _calendarBloc.flag == true
                        ? '${_calendarBloc.months[snapshot.data![0].month]} ${snapshot.data![0].day} - ${_calendarBloc.months[snapshot.data![1].month]} ${snapshot.data![1].day}'
                        : 'select a check-out date',
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          _calendar(_day, _month, _year),
          _calendar(1, (_month + 1) % 12, (_year)),
          _calendar(1, (_month + 2) % 12, (_year)),
          _calendar(1, (_month + 3) % 12, (_year)),
          _calendar(1, (_month + 4) % 12, (_year)),
          _calendar(1, (_month + 5) % 12, (_year)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  if (_calendarBloc.calendarPageIndex > 0) {
                    _calendarBloc.calendarPageIndex -= 1;
                  }
                });
                _controller.animateToPage(_calendarBloc.calendarPageIndex,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  if (_calendarBloc.calendarPageIndex < 6) {
                    _calendarBloc.calendarPageIndex += 1;
                  }
                });
                _controller.animateToPage(_calendarBloc.calendarPageIndex,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
